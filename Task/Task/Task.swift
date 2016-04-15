//
//  Task.swift
//  Task
//
//  Created by mac-admin on 4/13/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Task: NSObject {
    
    private let nameKey = "name"
    private let notesKey = "notes"
    private let dueKey = "due"
    private let isCompleterKey = "isComplete"
    
    var name: String
    var notes: String
    var due: NSDate?
    var isComplete: Bool
    
    init(name: String, notes: String, due: NSDate? = NSDate(), isComplete: Bool) {
        self.name = name
        self.notes = notes
        self.due = due
        self.isComplete = isComplete
        
    }
}

func ==(lhs: Task, rhs: Task) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}