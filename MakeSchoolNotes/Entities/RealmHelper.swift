//
//  RealmHelper.swift
//  MyNotes
//
//  Created by Christella on 2/8/16.
//  Copyright © 2016 Chris Orcutt. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHelper {
   
    static func addNote(note: Note) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(note)
        }
    }
    
    static func updateNote(oldNote: Note, newNote: Note) {
        let realm = try! Realm()
        try! realm.write() {
            oldNote.title = newNote.title
            oldNote.content = newNote.content
            oldNote.modificationTime = newNote.modificationTime
        }
    }
    
    static func deleteNote(note: Note) {
        let realm = try! Realm()
        try! realm.write(){
            realm.delete(note)
        }
    }
    
    static func retrieveNotes() -> Results<Note> {
        let realm = try! Realm()
        return realm.objects(Note).sorted("modificationTime", ascending: false)
    }
    
    
    
}
