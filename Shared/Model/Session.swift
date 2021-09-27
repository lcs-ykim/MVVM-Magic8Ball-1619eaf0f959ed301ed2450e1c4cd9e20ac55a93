//
//  Session.swift
//  MVVM-Magic8Ball
//
//  Created by Russell Gordon on 2021-09-17.
//

import Foundation

struct Session: Identifiable {
    
    // Unique identifier for each session
    let id = UUID()
    
    // Question that the user asks, must be set to start an advice session
    let question: String
    
    // Response will be provided later
    var response: String = ""
    
}
