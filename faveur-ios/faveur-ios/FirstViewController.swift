//
//  FirstViewController.swift
//  faveur-ios
//
//  Created by 高橋知嗣 on 2018/01/02.
//  Copyright © 2018年 ttmtg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func callbutton(_ sender: Any) {
        //        電話番号を定数で入れる
        let url = URL(string: "tel://0724523003")!
        //        アラートの設定
        let alert = UIAlertController(
            title: "ただいま電話受付時間外です",
            message: "電話受付時間\n火〜土曜　8:00〜17:30",
            preferredStyle: .alert)
        
        //        曜日を取得
        let comp = Calendar.Component.weekday
        let weekday = NSCalendar.current.component(comp, from: NSDate() as Date)
        print(weekday) // 1が日曜日 7が土曜日
        
        //        現在時刻の時間の取得と分をInt型で取得
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        print(hour, minute)
        
        //            8:00から16:59電話かけられる
        if weekday >= 3 && hour >= 8 && hour <= 16 {
            UIApplication.shared.open(url, options: [String : Any](), completionHandler: {
                isCalled in print(isCalled)
            })
        } else if weekday >= 3 && hour == 17 && minute <= 30 {
            //         17:00から17:30まで電話かけられる
            UIApplication.shared.open(url, options: [String : Any](), completionHandler: {
                isCalled in print(isCalled)
            })
        } else {
            //          アラート
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
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

