//
//  tab6VC.swift
//  Final Project
//
//  Created by Ashawn C Berry on 5/2/20.
//  Copyright © 2020 Ashawn C Berry. All rights reserved.
//

import UIKit

class tab6VC: UIViewController {
    
    @IBOutlet weak var song: UITextField!
    @IBOutlet weak var album: UITextField!
    @IBOutlet weak var feature: UITextField!
    @IBOutlet weak var results: UITextView!
    
    
    @IBAction func save(_ sender: Any) {
        
        let csvLine:String = "\(song.text!),\(album.text!),\(feature.text!)\n"

              
              let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
              let docDir:String=paths[0]
              let resultsFile:String=(docDir as NSString) .appendingPathComponent("results.csv")
              if !FileManager.default.fileExists(atPath: resultsFile) {
                  
                  FileManager.default.createFile(atPath: resultsFile, contents: nil, attributes: nil)
        
    }
        let fileHandle:FileHandle=FileHandle(forUpdatingAtPath: resultsFile)!
        fileHandle.seekToEndOfFile()
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        fileHandle.closeFile()
        
        song.text = ""
        album.text = ""
        feature.text = ""
    
    }
     
               
    @IBAction func display(_ sender: Any) {
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
               
               let docDir:String=paths[0] as String
               
                let resultsFile:String=(docDir as NSString) .appendingPathComponent("results.csv")
               
               
               if FileManager.default.fileExists(atPath: resultsFile) {
                   let fileHandle:FileHandle = FileHandle(forReadingAtPath: resultsFile)!
                   let resultsData:String!=NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String
                   fileHandle.closeFile()
                   results?.text=resultsData
                   
    }
    
        
               
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

