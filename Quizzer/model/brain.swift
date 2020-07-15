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
    var showpopup = false
    var popupscore = 0
    
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
            popupscore = score
            return true
            
        }else{
            popupscore = score 
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
            showpopup = false
            questionumber += 1
            
            
        }else{
            
            //show popup
            
            showpopup = true
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



//brain of multiple Choice Quiz


struct MBrainQuiz{
    
    var Mquestionumber = 0
    var Mscore = 0
    var Mshowpopup = false
    var Mpopupscore = 0

    
    let Mquiz = [
           
        MQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        MQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        MQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        MQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        MQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        MQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        MQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        MQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        MQuestion(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        MQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")


       
       ]
    
    
    mutating func Mcheackanswer(_ useranswer : String) -> Bool{
           
        if useranswer == Mquiz[Mquestionumber].correctAnswer{
            
               Mscore += 1
            
            Mpopupscore = Mscore
               
               return true
               
           }else{
               
               Mscore += 0
             Mpopupscore = Mscore
               return false
               
           }
           
       }
    
    func Mgetquestiontext() -> String{
           
           return Mquiz[Mquestionumber].q
       }
       
       
       
    func Mgetprogress() -> Float{
           
           let progress = Float(Mquestionumber) / Float(Mquiz.count)
           
           return progress
       }
       
       
       
    mutating func Mnextquestion(){
           
           if Mquestionumber + 1 < Mquiz.count{
               
            Mquestionumber += 1
            
            Mshowpopup = false
            
           }else{
            
            Mshowpopup = true
               
            Mquestionumber = 0
               
            Mscore = 0
            
           }
       }
       
    
    
    
    
       
    mutating func Mgetscore() -> Int{
           
           return Mscore
           
       }
       
       
    func Mscoreprogress() -> Float{
           
           let scoreprogress = Float(Mscore) / Float(Mquiz.count)
           
           return scoreprogress
       }
       
    func option1text() -> String{
        let option = Mquiz[Mquestionumber].a[0]
        return option
    }
    
    func option2text() -> String{
           let option = Mquiz[Mquestionumber].a[1]
           return option
       }
    
    func option3text() -> String{
           let option = Mquiz[Mquestionumber].a[2]
           return option
       }
    
    
    
    
    
    
}
