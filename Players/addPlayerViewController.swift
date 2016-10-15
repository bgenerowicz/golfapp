//
//  addPlayerViewController.swift
//  Players
//
//  Created by Bas Generowicz on 14/10/16.
//  Copyright © 2016 Bas Generowicz. All rights reserved.
//

import UIKit

class addPlayerViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var newName: UITextField!
    @IBOutlet weak var newhcp: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var player: Players?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newName.delegate = self
        checkValidPerson()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        saveButton.enabled = false
    }
    
    func checkValidPerson () {
        let text = newName.text ?? ""
        saveButton.enabled = !text.isEmpty
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        checkValidPerson()
        //navigationItem.title = textField.text
    }

    
    // MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let name = newName.text ?? ""
            
            //make sure hcp = int
            if let hcp = Int(newhcp.text!) {
                player = Players(name: name, hcp: hcp)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}
