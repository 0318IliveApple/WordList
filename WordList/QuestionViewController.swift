//
//  QuestionViewController.swift
//  WordList
//
//  Created by 中嶋裕也 on 2018/04/11.
//  Copyright © 2018年 中嶋裕也. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet var nextButton:UIButton!
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLavel:UILabel!
    
    var isAnswered: Bool = false
    var wordArray: [Dictionary<String,String>] = []
    var shuffuledWordArray: [Dictionary<String, String>] = []
    var nowNumber: Int = 0
    
    let saveData = UserDefaults.standard
    
    func shuffle(){
        print("ああああああああああああああああ")
        while wordArray.count > 0 {
            let index = Int(arc4random()) % wordArray.count
            shuffuledWordArray.append(wordArray[index])
            wordArray.remove(at: index)
            
        }
    }
    
    @IBAction func nextButtonTapped(){
        if isAnswered {
            nowNumber += 1
            answerLavel.text = ""
            
            if nowNumber < shuffuledWordArray.count {
                questionLabel.text = shuffuledWordArray[nowNumber]["english"]
                isAnswered = false
                
                nextButton.setTitle("答えを表示", for: .normal)
            }else {
                self.performSegue(withIdentifier: "toFinishView", sender: nil)
            }
        }else {
            answerLavel.text = shuffuledWordArray[nowNumber]["japanese"]
            isAnswered = true
            nextButton.setTitle("次へ", for: .normal)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        answerLavel.text = ""
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        shuffle()
        print(shuffuledWordArray)
        questionLabel.text = shuffuledWordArray[nowNumber]["english"]
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
