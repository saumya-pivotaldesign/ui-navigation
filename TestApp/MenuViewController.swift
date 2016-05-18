//
//  ViewController.swift
//  TestApp
//
//  Created by Pivotal on 5/18/16.
//  Copyright © 2016 pivotaldesign.biz. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var isFirstTime = true
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(self.isFirstTime)
        print("viewDidLoad")
        //self.moveToHome()
        moveToHomeWithSegue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onScreenOne(sender: AnyObject){
        print("onScreenOne")
        //self.performSegueWithIdentifier("segue_toOne", sender: self)
        self.moveToScreenOne()
    }
    
    @IBAction func onScreenTwo(sender: AnyObject){
        print("onScreenTwo")
        moveToScreenTwo()
    }
    
    private func moveToHome(){
        /*
         let vc = ViewController(nibName: "ViewController", bundle: nil)
         navigationController?.pushViewController(vc, animated: true)
         */
        if ( self.isFirstTime ) {
            let homeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("idHomeView")
            //self.navigationController?.pushViewController(homeViewController!, animated: true)
            //self.navigationController?.showViewController(homeViewController!, sender: nil)
            
            // ios 8+
            self.showViewController(homeViewController!, sender: self)
            
            self.isFirstTime = false
        }else{
            print("User : Navigated to : Menu");
        }
    }
    private func moveToHomeWithSegue(){
        self.performSegueWithIdentifier("segueToHome", sender: self)
    }
    /*
    private func moveToViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("ScreenOneViewController") as! UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    */
    private func moveToScreenOne(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("idScreenOne")
        
        // type: 1 : will replace the navigation controller completely
        //self.presentViewController(vc, animated: true, completion: nil)
        // type: 2 : will use Navigation controller
        //self.navigationController?.showViewController(vc, sender: nil)
        
        useNaviationControllerToShow(vc)
    }
    private func moveToScreenTwo(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("idScreenTwo")
        //self.presentViewController(vc, animated: true, completion: nil)
        useNaviationControllerToShow(vc)
    }
    private func useNaviationControllerToShow(vc:UIViewController){
        self.navigationController?.showViewController(vc, sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        print("prepareForSegue")
        if segue.identifier == "push" {
            print("id is push !")
        }
    }
    
    @IBAction func comebackToMenu(segue: UIStoryboardSegue){
        print("comebackToMenu")
    }
    
    


}

