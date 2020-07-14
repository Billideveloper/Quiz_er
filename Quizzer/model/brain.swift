//
//  brain.swift
//  Quizzer
//
//  Created by Ravi Thakur on 13/07/20.
//  Copyright © 2020 billidevelopers. All rights reserved.
//

import Foundation

struct Brainquiz{
    
    var questionumber = 0
    var score = 0
    
    let quiz = [
        
      Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    
    ]
    
    
    mutating func cheackanswer(_ useranswer : String) -> Bool{
        
        if useranswer == quiz[questionumber].a{
            score += 1
            
            return true
            
        }else{
            
            score += 0
            return false
            
        }
        
    }
    
    
    func getquestiontext() -> String{
        
        return quiz[questionumber].q
    }
    
    
    func getprogress() -> Float{
        
        let progress = Float(questionumber) / Float(quiz.count)
        
        return progress
    }
    
    
    mutating func nextquestion(){
        
        if questionumber + 1 < quiz.count{
            questionumber += 1
        }else{
            questionumber = 0
            score = 0
        }
    }
    
    
    
    mutating func getscore() -> Int{
        
        return score
        
    }
    
    func scoreprogress() -> Float{
        
        let scoreprogress = Float(score) / Float(quiz.count)
        
        return scoreprogress
    }
    
}
