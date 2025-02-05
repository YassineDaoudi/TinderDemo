//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse
import FBSDKCoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let permissions = ["public_profile"]
        
        
        PFFacebookUtils.logInInBackground(withReadPermissions: permissions, block: {
            (user: PFUser?, error: Error?)  in
            
            if let error = error {
                
                print(error)
                
            } else {
                
                if let user = user {
                    
                    print(user)
                    
                    
                }
                
                
                
            }
            
            
            
        })
        
        print(PFUser.current()?.objectId)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

