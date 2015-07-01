//
//  TimelineViewController.swift
//  Makestagram
//
//  Created by Timothy Horng on 6/30/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit
import Parse

class TimelineViewController: UIViewController {
    
    var photoTakingHelper: PhotoTakingHelper?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //In viewDidLoad we are setting the TimelineViewController to be the tabBarControllers delegate
        self.tabBarController?.delegate = self
    }
    
    func takePhoto() {
        // instantiate photo taking class, provide callback for when photo  is selected
        photoTakingHelper = PhotoTakingHelper(viewController: self.tabBarController!) { (image: UIImage?) in
            
            // instantiate photo taking class, provide callback for when photo is selected
            let post = Post()
            post.image = image
            post.uploadPost()
        }
    }

    
}

// MARK: Tab Bar Delegate
// If we return true the Tab Bar View Controller will behave as usual and present the View Controller that the user has selected. If we return false the View Controller will not be displayed and the Tab Bar Item will not be selected - exactly the behavior that we want for the Photo Tab Bar Item.

extension TimelineViewController: UITabBarControllerDelegate {
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        if (viewController is PhotoViewController) {
            takePhoto()
            return false
        } else {
            return true
        }
    }
    
}

