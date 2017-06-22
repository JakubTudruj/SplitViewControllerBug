//
//  ViewController.swift
//  SplitViewControllerBug
//
//  Created by Jakub Tudruj on 22/06/2017.
//  Copyright © 2017 Jakub Tudruj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNextVCButtonTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate, let window = appDelegate.window else {
            return
        }
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SplitViewController") as? SplitViewController else {
            return
        }
        
        window.rootViewController?.present(nextViewController, animated: true, completion: nil)
        window.rootViewController = nextViewController
    }
}

