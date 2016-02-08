//
//  NewNoteViewController.swift
//  MyNotes
//
//  Created by Christella on 2/8/16.
//  Copyright © 2016 Chris Orcutt. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            } else if identifier == "Save" {
                print("Save button tapped")
            }
        }
        
    }
    

}
