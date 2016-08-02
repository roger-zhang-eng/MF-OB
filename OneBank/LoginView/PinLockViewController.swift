//
//  PinLockViewController.swift
//  OneBank
//
//  Created by RogerZ on 2/08/2016.
//  Copyright © 2016 MaxwellForest. All rights reserved.
//

import UIKit

class PinLockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //pinCodeTextField.becomeFirstResponder()
        //pinCodeTextField.keyboardType = UIKeyboardType.NumberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //pinCodeTextField.keyboardType = UIKeyboardType.NumberPad
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
