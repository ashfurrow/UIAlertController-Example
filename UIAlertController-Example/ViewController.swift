//
//  ViewController.swift
//  UIAlertController-Example
//
//  Created by Ash Furrow on 2014-09-07.
//  Copyright (c) 2014 Ash Furrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonWasPressed(sender: UIButton) {
        var alertViewControllerTextField: UITextField?
        let handler = { () -> () in
            // Probably not necessary to unwrap the optional in this way, since the alertViewControllerTextField will be populated immediately
            if let alertViewControllerTextField = alertViewControllerTextField {
                // Do whatever you want with the text now
                println("\(alertViewControllerTextField.text)")
            }
        }
        
        let promptController = UIAlertController(title: "Type Something", message: nil, preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            handler()
            promptController.dismissViewControllerAnimated(true, completion: nil)
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            promptController.dismissViewControllerAnimated(true, completion: nil)
        }
        promptController.addAction(ok)
        promptController.addAction(cancel)
        promptController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            alertViewControllerTextField = textField
        }
        presentViewController(promptController, animated: true, completion: nil)
    }
}

