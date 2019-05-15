//
//  ViewController.swift
//  BasicAnimations
//
//  Created by Jeffrey Carpenter on 5/15/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redView)
        
        // Add constraints
        
        let redLeadingContraint = NSLayoutConstraint(item: redView,
                                                     attribute: .leading,
                                                     relatedBy: .equal,
                                                     toItem: view.safeAreaLayoutGuide,
                                                     attribute: .leading,
                                                     multiplier: 1,
                                                     constant: 30)
        let redBottomContraint = NSLayoutConstraint(item: redView,
                                                    attribute: .bottom,
                                                    relatedBy: .equal,
                                                    toItem: view.safeAreaLayoutGuide,
                                                    attribute: .bottom,
                                                    multiplier: 1,
                                                    constant: 0)
        let redHeightContraint = NSLayoutConstraint(item: redView,
                                                    attribute: .height,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1,
                                                    constant: 100)
        let redViewAspectRatioConstraint = NSLayoutConstraint(item: redView,
                                                              attribute: .width,
                                                              relatedBy: .equal,
                                                              toItem: redView,
                                                              attribute: .height,
                                                              multiplier: 1,
                                                              constant: 0)
        NSLayoutConstraint.activate([redLeadingContraint, redBottomContraint, redHeightContraint, redViewAspectRatioConstraint])
    }
}

