//
//  tab3VC.swift
//  Final Project
//
//  Created by Ashawn C Berry on 5/1/20.
//  Copyright © 2020 Ashawn C Berry. All rights reserved.
//

import UIKit

class tab3VC: UIViewController {
    
    
    @IBOutlet weak var upVote: UILabel!
    @IBOutlet weak var downVote: UILabel!
    @IBOutlet weak var results: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
       
       upVote.text = String((parent as! tabBarVC).yesVote)
           downVote.text = String((parent as! tabBarVC).noVote)
      
       
       if (parent as!tabBarVC).yesVote >
       (parent as! tabBarVC).noVote
       {
       results.text = "Yes!"
       }else {
       results.text = "No!"
       }
    
    

        func viewDidLoad() {
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
}
