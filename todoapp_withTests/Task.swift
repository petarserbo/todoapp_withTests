//
//  Task.swift
//  todoapp_withTests
//
//  Created by Petar Perich on 13.05.2021.
//

import Foundation

struct Task {
    var title: String
    let description: String?
   private (set) var date: Date?
    let location: Location?
    
    init(title: String, description: String? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}
