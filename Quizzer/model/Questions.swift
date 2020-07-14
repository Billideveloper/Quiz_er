//
//  Questions.swift
//  Quizzer
//
//  Created by Ravi Thakur on 13/07/20.
//  Copyright © 2020 billidevelopers. All rights reserved.
//

import Foundation

struct Questions {
    
    let q: String
    let a: String
    
    
    init(q:String,a:String) {
        self.q = q
        self.a = a
    }
    
}

struct MQuestion {
    
    let q: String
    let a: [String]
    let correctAnswer: String
    
    
    init(q:String,a:[String],correctAnswer:String) {
        
        self.q = q
        self.a = a
        self.correctAnswer = correctAnswer
    }
    
}
