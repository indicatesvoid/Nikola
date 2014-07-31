//
//  ViewContainerController.swift
//  Nikola
//
//  Created by William Clark on 7/30/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class ViewContainerController: UIViewController, UIPageViewControllerDelegate
{
    var pageViewController : UIPageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        self.pageViewController!.dataSource = self.modelController
        self.pageViewController!.delegate = self
        
        let startingViewController: MainViewController = modelController.viewControllerAtIndex(0, storyboard: self.storyboard)!
        let viewControllers: NSArray = [startingViewController];
        self.pageViewController!.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: nil);
        self.pageViewController!.view.frame = CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController!.view)
        self.pageViewController!.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    var _modelController: ModelController? = nil
    var modelController: ModelController {
    // Return the model controller object, creating it if necessary.
    // In more complex implementations, the model controller may be passed to the view controller.
    if !_modelController {
        _modelController = ModelController()
        }
        return _modelController!
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController!) -> Int
    {
        return modelController.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController!) -> Int
    {
        return 0
    }
    
    // MARK: - UIPageViewController delegate methods
    
    func pageViewController(pageViewController: UIPageViewController, spineLocationForInterfaceOrientation orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation {
        // Set the spine position to "min" and the page view controller's view controllers array to contain just one view controller. Setting the spine position to 'UIPageViewControllerSpineLocationMid' in landscape orientation sets the doubleSided property to true, so set it to false here.
        let currentViewController = self.pageViewController!.viewControllers[0] as UIViewController
        let viewControllers: NSArray = [currentViewController]
        self.pageViewController!.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: {done in })
        
        self.pageViewController!.doubleSided = false
        return .Min
    }
}
