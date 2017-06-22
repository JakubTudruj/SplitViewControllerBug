//
//  DetailViewController.swift
//  SplitViewControllerBug
//
//  Created by Jakub Tudruj on 22/06/2017.
//  Copyright © 2017 Jakub Tudruj. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func resetButtonTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate, let window = appDelegate.window else {
            return
        }
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        
        window.rootViewController = nextViewController
    }

}
