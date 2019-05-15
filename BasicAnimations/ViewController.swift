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
        
//        let redLeadingContraint = NSLayoutConstraint(item: redView,
//                                                     attribute: .leading,
//                                                     relatedBy: .equal,
//                                                     toItem: view.safeAreaLayoutGuide,
//                                                     attribute: .leading,
//                                                     multiplier: 1,
//                                                     constant: 30)
//        let redBottomContraint = NSLayoutConstraint(item: redView,
//                                                    attribute: .bottom,
//                                                    relatedBy: .equal,
//                                                    toItem: view.safeAreaLayoutGuide,
//                                                    attribute: .bottom,
//                                                    multiplier: 1,
//                                                    constant: 0)
//        let redHeightContraint = NSLayoutConstraint(item: redView,
//                                                    attribute: .height,
//                                                    relatedBy: .equal,
//                                                    toItem: nil,
//                                                    attribute: .notAnAttribute,
//                                                    multiplier: 1,
//                                                    constant: 100)
//        let redViewAspectRatioConstraint = NSLayoutConstraint(item: redView,
//                                                              attribute: .width,
//                                                              relatedBy: .equal,
//                                                              toItem: redView,
//                                                              attribute: .height,
//                                                              multiplier: 1,
//                                                              constant: 0)
        
        // Create constraints using anchors
        
        let redLeadingContraint            = redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30)
        let redBottomContraint             = redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        let redHeightContraint             = redView.heightAnchor.constraint(equalToConstant: 150)
        let redViewAspectRatioConstraint    = redView.widthAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 1)
        
        NSLayoutConstraint.activate([redLeadingContraint, redBottomContraint, redHeightContraint, redViewAspectRatioConstraint])
    }
}

