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
        
        let promptController = UIAlertController(title: "Type Something", message: nil, preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            println("\(alertViewControllerTextField?.text)")
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
        }
        promptController.addAction(ok)
        promptController.addAction(cancel)
        promptController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            alertViewControllerTextField = textField
        }
        presentViewController(promptController, animated: true, completion: nil)
    }
}

