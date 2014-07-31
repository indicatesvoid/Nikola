//
//  ModelController.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

/*
A controller object that manages a simple model

The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.

There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
*/


class ModelController: NSObject, UIPageViewControllerDataSource {
    
    var pageData = NSArray()
    var pageTitles : Array<String> = ["One", "Two", "Three"]
    var pageColors : Array<UIColor> = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor()]
    var currentIndex : Int = 0
    
    init() {
        super.init()
    }
    
    func viewControllerAtIndex(index: Int, storyboard: UIStoryboard) -> MainViewController?
    {
        println("retrieving view controller at index: \(String(index))")
        if(self.pageTitles.count == 0 || index >= self.pageTitles.count) {
            return nil
        }
        
        let pageContentViewController = storyboard.instantiateViewControllerWithIdentifier("MainViewController") as MainViewController
        pageContentViewController.setTitle(self.pageTitles[index])
        pageContentViewController.bgColor = self.pageColors[index]
        pageContentViewController.pageIndex = index;
        println("Title: \(self.pageTitles[index])")
        self.currentIndex = index
        
        return pageContentViewController
    }
    
    // MARK: - Page View Controller Data Source
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = currentIndex;
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index--
        currentIndex = index;
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = currentIndex
        if index == NSNotFound {
            return nil
        }
        
        index++
        if index == self.pageData.count {
            return nil
        }
        currentIndex = index
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard)
    }
    
}


