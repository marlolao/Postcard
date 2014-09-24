//
//  ViewController.swift
//  Postcard
//
//  Created by Marlo la O' on 9/20/14.
//  Copyright (c) 2014 Cosmic Gorgons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        // code will evaluate when we press the button
        
        // unhide the message label
        messageLabel.hidden = false
        // set text of message label
        messageLabel.text = enterMessageTextField.text
        // set color of message label
        messageLabel.textColor = UIColor.redColor()
        // set message text field to empty text
        enterMessageTextField.text = ""
        
        // unhide name label
        nameLabel.hidden = false
        // update nameLabel's text to display the information in the nameTextField
        nameLabel.text = enterNameTextField.text
        // change nameLabel color to blue
        nameLabel.textColor = UIColor.blueColor()
        // clear nameTextField
        enterNameTextField.text = ""

        // hide keyboard after pressing the send mail button
        enterMessageTextField.resignFirstResponder()
        
        // update button title once button has been pressed
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

