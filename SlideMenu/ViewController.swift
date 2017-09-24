//
//  ViewController.swift
//  SlideMenu
//
//  Created by Ram Vadranam on 24/09/2017.
//  Copyright © 2017 Vadranam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slideView: UIView!
    @IBOutlet weak var leadingSpaceConstarint: NSLayoutConstraint!
    var showMenu = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.ShowMenu(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.ShowMenu(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
      
        slideView.layer.shadowOpacity = 1
        slideView.layer.shadowRadius = 6
    }

  
    @IBAction func ShowMenu(_ sender: Any) {
        if(showMenu)
        {
        leadingSpaceConstarint.constant = -150
        }
        else
        {
        leadingSpaceConstarint.constant = 0
          
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        
        showMenu = !showMenu
    }
    

}

