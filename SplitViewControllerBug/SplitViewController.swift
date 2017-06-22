//
//  SplitViewController.swift
//  SplitViewControllerBug
//
//  Created by Jakub Tudruj on 22/06/2017.
//  Copyright © 2017 Jakub Tudruj. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
