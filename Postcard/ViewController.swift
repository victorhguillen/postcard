//
//  ViewController.swift
//  Postcard
//
//  Created by hackprodev on 1/28/15.
//  Copyright (c) 2015 digidev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: UIButton) {
        //messageLabel.text = "Hello World"
        //Accesing text in a text box
        messageLabel.text = "Message:" + messageTextField.text
        nameLabel.text = "To:" + nameTextField.text
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        //Clean the text field
        messageTextField.text = ""
        nameTextField.text = ""
        
        
        
        // hide the keyboard
        messageTextField.resignFirstResponder()
        sendButton.setTitle("Message Send", forState: UIControlState.Normal)
    }

}

