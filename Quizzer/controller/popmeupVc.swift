//
//  popmeupVc.swift
//  Quizzer
//
//  Created by Ravi Thakur on 15/07/20.
//  Copyright © 2020 billidevelopers. All rights reserved.
//

import UIKit

class popmeupVc: UIViewController {
    
    
    @IBOutlet weak var scorelabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.init(displayP3Red: 0, green: 0, blue: 0, alpha: 0.65)
        
    
    }
    @IBAction func homevc(_ sender: Any) {
        
          
        self.view.removeFromSuperview()
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

    @IBAction func retakequiz(_ sender: Any) {
        
        
        self.view.removeFromSuperview()
        
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
