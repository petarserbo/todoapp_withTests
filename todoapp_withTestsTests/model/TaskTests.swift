//
//  TaskTests.swift
//  todoapp_withTestsTests
//
//  Created by Petar Perich on 12.05.2021.
//

import XCTest
@testable import todoapp_withTests

class TaskTests: XCTestCase {

    func testInitTaskWithTitle() {
        let task = Task (title: "Foo")
        XCTAssertNotNil(task)
    }
    
    func testInitTaskWithTitleAndDescription() {
        let task = Task (title: "Foo", description: "Bar")
        XCTAssertNotNil(task)
    }
    func testWhenGivenTitleSetsTitle(){
        let task = Task(title: "Foo")
        XCTAssertEqual(task.title, "Foo")
    }
    
    func testWhenGivenDescriptionSetsDescription(){
        let task = Task (title: "Foo", description: "Bar")
        XCTAssertTrue(task.description == "Bar")
    }
    func testTaskWithDate(){
        let task = Task(title: "Foo")
        XCTAssertNotNil(task.date)
    }
    
    func testWhenGivenLocationSetsLocation(){
        let location = Location(name: "Foo")
        
        let task = Task(title: "Bar", description: "Baz", location: location)
        
        XCTAssertEqual(location, task.location)
    }
}
