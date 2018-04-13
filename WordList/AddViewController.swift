//
//  AddViewController.swift
//  WordList
//
//  Created by 中嶋裕也 on 2018/04/11.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var englishTextField: UITextField!
    @IBOutlet var japaneseTextField: UITextField!
    
    var wordArray: [Dictionary<String,String>] = []
    
    let saveData = UserDefaults.standard
    
    @IBAction func saveWord(){
        let wordDictionaly = ["english": englishTextField.text!,"japanese":japaneseTextField.text!]
        
        wordArray.append(wordDictionaly)
        saveData.set(wordArray, forKey: "WORD")
        
        let alert = UIAlertController(title: "設定完了", message: "単語の登録が完了しました", preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        self.present(alert, animated: true, completion: nil)
        englishTextField.text = ""
        japaneseTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil{
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String,String>]
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
