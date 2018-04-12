//
//  ViewController.swift
//  WordList
//
//  Created by 中嶋裕也 on 2018/04/11.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func back(segue: UIStoryboardSegue) {
        
    }

    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        
        if let wordArray = saveData.array(forKey: "WORD") {
            if wordArray.count > 0 {
                self.performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }
        
        let alert: UIAlertController = UIAlertController(title:"単語",message:"まずは「単語一覧」をタップして単語登録してください",preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK",style: .default,handler: nil))
        self.present(alert, animated: true,completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

