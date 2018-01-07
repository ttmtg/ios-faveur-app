//
//  MemoViewController.swift
//  faveur-ios
//
//  Created by 高橋知嗣 on 2018/01/06.
//  Copyright © 2018年 ttmtg. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {

    //メモNo
    var memoNo = ""
    
    //UserDefaults活性化！
    let saves = UserDefaults.standard
    
//    ボタンを押したら保存してキーボード閉じる
    @IBAction func saveButton(_ sender: Any) {
        saves.set(memo.text, forKey: "myText"+memoNo)
        memo.resignFirstResponder()
        //        アラートの設定
        let alert = UIAlertController(
            title: "保存完了",
            message: "保存したよ！🍞😄👍",
            preferredStyle: .alert)
        //          アラート
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var memo: UITextView!
    
    override func viewDidLoad() {
        memo.text = saves.string(forKey: "myText"+memoNo)
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
