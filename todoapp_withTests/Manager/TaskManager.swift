//
//  TaskManager.swift
//  todoapp_withTests
//
//  Created by Petar Perich on 24.05.2021.
//

import Foundation

class TaskManager{
    var tasksCount = 0
    let doneTasksCount = 0
    
    private var tasks: [Task] = []
    
    
    func add(task: Task){
        tasksCount += 1
        tasks.append(task)
    }
    
    func task(at index: Int) -> Task {
        return tasks[index]
    }
}
