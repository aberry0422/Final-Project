//
//  tab4VC.swift
//  Final Project
//
//  Created by Ashawn C Berry on 5/1/20.
//  Copyright © 2020 Ashawn C Berry. All rights reserved.
//

import UIKit
import WebKit
import MessageUI

class tab4VC: UIViewController, MFMessageComposeViewControllerDelegate {
func messageComposeViewController(_ controller:MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    
}

    @IBOutlet weak var ovoStore: WKWebView!
    
    
    @IBAction func webSite(_ sender: Any) {
        if let url = URL(string: "https://us.octobersveryown.com/"){
            UIApplication.shared.open(url, options: [:])
                      }
    }
    
    
    @IBAction func sendMessage(_ sender: Any) {
        let composeVC = MFMessageComposeViewController()
               composeVC.messageComposeDelegate = self

               composeVC.recipients = ["2164014805"]
               composeVC.body = "Hello, this message is being sent from my app"
               
               if MFMessageComposeViewController.canSendText() {
                   self.present(composeVC, animated: true, completion: nil)
               } else{
                   print("Can't send message")
               }
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
             let myURL = URL(string:"https://us.octobersveryown.com/")
             let myRequest = URLRequest(url: myURL!)
        ovoStore.load(myRequest)
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
