//
//  TaskController.swift
//  Task
//
//  Created by mac-admin on 4/14/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class TaskController {
    
    var tasks: [Task] = []
    
    let sharedInstance = TaskController()
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
        
    }
    var mockTasks: [Task] {
        
        let task1 = Task(name: "homework", notes: "do it", due: NSDate(), isComplete: true)
        let task2 = Task(name: "IKEA", notes: "picture frames", isComplete: false)
        let task3 = Task(name: "NCMO", notes: "With Paige", due: NSDate(), isComplete: false)
        let task4 = Task(name: "idk", notes: "cool", isComplete: true)
        
        return [task1, task2, task3, task4]
    }
    
    var completedTasks: [Task] {
        return tasks.filter({ $0.isComplete == true})
    }
    
    var incompleteTasks: [Task] {
        return tasks.filter({$0.isComplete == false})
    }
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func deleteTask(task: Task) {
        if let index = tasks.indexOf(task) {
            tasks.removeAtIndex(index)
        }
    }
    
}