//
//  multipleQuizvc.swift
//  Quizzer
//
//  Created by Ravi Thakur on 14/07/20.
//  Copyright © 2020 billidevelopers. All rights reserved.
//

import UIKit

class multipleQuizvc: UIViewController {
    
    
    var mbrainquiz = MBrainQuiz()
    
    
    @IBOutlet weak var Mscore: UILabel!
    
    @IBOutlet weak var Mscoreprogress: UIProgressView!
    
    @IBOutlet weak var Mquestiontext: UILabel!
    
    @IBOutlet weak var Mquizprogress: UIProgressView!
    
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    @IBOutlet weak var option3: UIButton!
    
    @IBOutlet weak var option4: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func answerpressed(_ sender: UIButton) {
        
        
        let userselectedanswer = sender.currentTitle!
        
        let userselectedright = mbrainquiz.Mcheackanswer(userselectedanswer)
        
        if userselectedright{
            
            //change background color of image
            
            sender.backgroundColor = UIColor.green
            
        }else{
            
            //change background color of image
            
            sender.backgroundColor = UIColor.red
            
            
        }
        
        mbrainquiz.Mnextquestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
           
        
        
        
        
    }
    
    @objc func updateUI(){
        
        Mquestiontext.text = mbrainquiz.Mgetquestiontext()
        
        Mscore.text = "Score \(mbrainquiz.Mgetscore())"
        
        Mscoreprogress.progress = mbrainquiz.Mscoreprogress()
        
        option1.backgroundColor = UIColor.black
        
        option2.backgroundColor = UIColor.black
        
        option3.backgroundColor = UIColor.black
        
        Mquizprogress.progress = mbrainquiz.Mgetprogress()
        
        option1.setTitle(mbrainquiz.option1text(), for: .normal)
        
        option2.setTitle(mbrainquiz.option2text(), for: .normal)
        
        option3.setTitle(mbrainquiz.option3text(), for: .normal)
        
        
        
    }
    
    

    
    
    
    

}
