//
//  NewNoteViewController.swift
//  MyNotes
//
//  Created by Christella on 2/8/16.
//  Copyright © 2016 Chris Orcutt. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {
    
    var note: Note?
    
    @IBOutlet weak var noteTitleTextField: UITextField!

    @IBOutlet weak var noteContentTextView: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let note = note {
            noteTitleTextField.text = note.title
            noteContentTextView.text = note.content
        } else {
            noteTitleTextField.text = ""
            noteContentTextView.text = ""
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = note?.title
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! NotesViewController
        if segue.identifier == "Save" {
            
            if let note = note {
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
            } else {
                let note = Note()
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
                note.modificationTime = NSDate()
                destinationViewController.notes.append(note)
            }
            
            destinationViewController.tableView.reloadData()
        }
        
    }
    

}
