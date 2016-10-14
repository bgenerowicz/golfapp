//
//  addPlayerViewController.swift
//  Players
//
//  Created by Bas Generowicz on 14/10/16.
//  Copyright © 2016 Bas Generowicz. All rights reserved.
//

import UIKit

class addPlayerViewController: UIViewController {
    
    @IBOutlet weak var newName: UITextField!
    @IBOutlet weak var newhcp: UITextField!

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func newPerson(sender: UIButton) {
        let storeData = [newName.text,newhcp.text]
        print(storeData)
        
    }
}
