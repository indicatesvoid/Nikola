////
////  PageViewController.swift
////  Nikola
////
////  Created by William Clark on 7/31/14.
////  Copyright (c) 2014 fuseproject. All rights reserved.
////
//
//import UIKit
//
//class PageViewController: UIViewController, UIScrollViewDelegate
//{
//    @IBOutlet var scrollView: UIScrollView!
//    @IBOutlet var pageControl: UIPageControl!
//    
//    @IBAction func changePage(AnyObject) {
//        
//    }
//    
//    
//    
//    func loadScrollViewWithPage(page: Int) {
//        if(page < 0 || page >= self.childViewControllers.count) {
//            return
//        }
//        
//        let controller: UIViewController = self.childViewControllers[page] as UIViewController
//        if(controller == nil) {
//            return
//        }
//        
//        if(controller.view.superview == nil) {
//            let frame: CGRect = CGRectOffset(self.scrollView.frame, ((self.scrollView.frame.size.width) as CGFloat * page) as CGFloat, 0 as CGFloat)
//            controller.view.frame = frame
//            self.scrollView.addSubview(controller.view)
//        }
//    }
//    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        for i in 0..<self.childViewControllers.count {
//            self.loadScrollViewWithPage(i)
//        }
//        
//        self.pageControl.currentPage = 0
////        _page = 0
//        self.pageControl.numberOfPages = self.childViewControllers.count
//        
//        let viewController: UIViewController = self.childViewControllers[self.pageControl.currentPage] as UIViewController
//        if(viewController.view.superview != nil) {
//            viewController.viewWillAppear(animated)
//        }
//        
//        self.scrollView.contentSize = CGSizeMake((scrollView.frame.size.width * self.childViewControllers.count) as CGFloat, scrollView.frame.size.height)
//    }
//    
//    override func viewDidAppear(animated: Bool)  {
//        super.viewDidAppear(animated)
//        let viewController: UIViewController = self.childViewControllers[self.pageControl.currentPage] as UIViewController
//        if(viewController.view.superview != nil) {
//            viewController.viewDidAppear(animated)
//        }
//    }
//    
//    override func viewWillDisappear(animated: Bool) {
//        let viewController: UIViewController = self.childViewControllers[self.pageControl.currentPage] as UIViewController
//        if(viewController.view.superview != nil) {
//            viewController.viewWillDisappear(animated)
//        }
//        
//        super.viewWillDisappear(animated)
//    }
//    
//    override func viewDidDisappear(animated: Bool) {
//        let viewController: UIViewController = self.childViewControllers[self.pageControl.currentPage] as UIViewController
//        if(viewController.view.superview != nil) {
//            viewController.viewDidDisappear(animated)
//        }
//        
//        super.viewDidDisappear(animated)
//    }
//}
//
////import UIKit
////
////class ViewContainerController: UIViewController, UIPageViewControllerDataSource
////{
////    var pageViewController : UIPageViewController?
////    var pageTitles : Array<String> = ["One", "Two", "Three"]
////    var pageColors : Array<UIColor> = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor()]
////    var currentIndex : Int = 0
////    
////    override func viewDidLoad() {
////        super.viewDidLoad();
////        
////        self.pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
////        self.pageViewController!.dataSource = self
////        
////        let startingViewController: MainViewController = self.viewControllerAtIndex(0)!
////        let viewControllers: NSArray = [startingViewController];
////        self.pageViewController!.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: nil);
////        self.pageViewController!.view.frame = CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)
////        
////        self.addChildViewController(self.pageViewController)
////        self.view.addSubview(self.pageViewController!.view)
////        self.pageViewController!.didMoveToParentViewController(self)
////    }
////    
////    override func didReceiveMemoryWarning() {
////        super.didReceiveMemoryWarning();
////    }
////    
////    func pageViewController(pageViewController: UIPageViewController!, viewControllerBeforeViewController viewController: UIViewController!) -> UIViewController!
////    {
////        var idx = self.currentIndex
////        
////        if(idx == 0 || idx == NSNotFound) {
////            return nil
////        }
////        
////        idx--
////        println("Decreasing Index: \(String(idx))")
////        return self.viewControllerAtIndex(idx)
////    }
////    
////    func pageViewController(pageViewController: UIPageViewController!, viewControllerAfterViewController viewController: UIViewController!) -> UIViewController!
////    {
////        var idx = self.currentIndex
////        
////        if(idx == NSNotFound) {
////            return nil
////        }
////        
////        idx++
////        println("Increasing Index: \(String(idx))")
////        if(idx == self.pageTitles.count) {
////            return nil
////        }
////        
////        return self.viewControllerAtIndex(idx)
////    }
////    
////    func viewControllerAtIndex(index: Int) -> MainViewController?
////    {
////        println("retrieving view controller at index: \(String(index))")
////        if(self.pageTitles.count == 0 || index >= self.pageTitles.count) {
////            return nil
////        }
////        
////        let pageContentViewController = self.storyboard.instantiateViewControllerWithIdentifier("MainViewController") as MainViewController
////        pageContentViewController.setTitle(self.pageTitles[index])
////        pageContentViewController.bgColor = self.pageColors[index]
////        pageContentViewController.pageIndex = index;
////        println("Title: \(self.pageTitles[index])")
////        self.currentIndex = index
////        
////        return pageContentViewController
////    }
////    
////    func presentationCountForPageViewController(pageViewController: UIPageViewController!) -> Int
////    {
////        return self.pageTitles.count
////    }
////    
////    func presentationIndexForPageViewController(pageViewController: UIPageViewController!) -> Int
////    {
////        return 0
////    }
////}
