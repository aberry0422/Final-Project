//
//  tab2VC.swift
//  Final Project
//
//  Created by Ashawn C Berry on 5/1/20.
//  Copyright © 2020 Ashawn C Berry. All rights reserved.
//

import UIKit

class tab2VC: UIViewController {

 
    @IBAction func yesVote(_ sender: Any) {
        
         (parent as! tabBarVC).yesVote+=1
    }
    
    
    
    @IBAction func noVote(_ sender: Any) {
         (parent as! tabBarVC).noVote+=1
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
