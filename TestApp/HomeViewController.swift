//
//  ViewController.swift
//  TestApp
//
//  Created by Pivotal on 5/18/16.
//  Copyright © 2016 pivotaldesign.biz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMenu(){
        self.performSegueWithIdentifier("segueToHome", sender: self)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "push" {
            print("segue id == pish");
        }
    }
    

}

