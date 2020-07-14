//
//  ViewController.swift
//  Quizzer
//
//  Created by Ravi Thakur on 12/07/20.
//  Copyright © 2020 billidevelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var brainquiz = Brainquiz()
    
    
    @IBOutlet weak var QuestionText: UILabel!
    
    @IBOutlet weak var progressbar: UIProgressView!
    
    @IBOutlet weak var truebtn: UIButton!
    
    
    @IBOutlet weak var falsebtn: UIButton!
    
    @IBOutlet weak var Scorelabel: UILabel!
    
    @IBOutlet weak var scoreprogress: UIProgressView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
        
    // hey everything is fine
        
        // Do any additional setup after loading the view.
    }

    
    

    @IBAction func answerbtnpressed(_ sender: UIButton) {
        
        
        
        let useranswer = sender.currentTitle!
            
        let usergotright = brainquiz.cheackanswer(useranswer)
        
        
        if usergotright {
            
            sender.backgroundColor = UIColor.green
            
        }else{
            
            sender.backgroundColor = UIColor.red
        }
        
        
        brainquiz.nextquestion()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    }
    

    
    @objc func updateUI(){
        
        
        QuestionText.text =  brainquiz.getquestiontext()
        
        Scorelabel.text = "Score \(brainquiz.getscore())"
        
        truebtn.backgroundColor = UIColor.black
        falsebtn.backgroundColor = UIColor.black
        
        progressbar.progress = brainquiz.getprogress()
        
        scoreprogress.progress = brainquiz.scoreprogress()
        
    }
    
    
    

}

