//
//  MapViewController.swift
//  Faveur
//
//  Created by 高橋知嗣 on 2017/12/24.
//  Copyright © 2017年 ttmtg. All rights reserved.
//

import UIKit
import WebKit

class MapViewContoroller: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.com/maps/place/Boulangerie+Faveur+%E3%83%96%E3%83%BC%E3%83%A9%E3%83%B3%E3%82%B8%E3%82%A7%E3%83%AA%E3%83%BC+%E3%83%95%E3%82%A1%E3%83%B4%E3%83%BC%E3%83%AB/@34.4072743,135.3458466,15z/data=!4m5!3m4!1s0x6000c8fac921b1a3:0xc898f955c162c37d!8m2!3d34.4065158!4d135.3459138?hl=ja")
        let urlRequest = URLRequest(url: url!)
        // webViewで表示するWEBサイトの読み込みを開始します。
        webView.load(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
