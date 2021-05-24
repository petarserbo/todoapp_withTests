//
//  TaskManagerTests.swift
//  todoapp_withTestsTests
//
//  Created by Petar Perich on 24.05.2021.
//

import XCTest
@testable import todoapp_withTests

class TaskManagerTests: XCTestCase {
    
    var sut: TaskManager!

    override func setUpWithError() throws {
    sut = TaskManager()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testInitTaskManagerWithZeroTasks() {
        XCTAssertEqual(sut.tasksCount, 0)
    }
    
    func testInitTaskManagerWithZeroDoneTasks(){
        XCTAssertEqual(sut.doneTasksCount, 0)
        
    }
    
    func testAddTaskIncrementTaskCount(){
        let task = Task(title: "Foo")
        sut.add(task: task)
        XCTAssertEqual(sut.tasksCount, 1)
    }
    
    func testTaskAtIndexIsAddedTask(){
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        let returnedTask = sut.task(at: 0)
        XCTAssertEqual(task.title, returnedTask.title)
    }

}
