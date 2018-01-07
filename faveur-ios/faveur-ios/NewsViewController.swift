//
//  NewsViewController.swift
//  faveur-ios
//
//  Created by 高橋知嗣 on 2018/01/02.
//  Copyright © 2018年 ttmtg. All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://goo.gl/TfUeA4") {
            let request = URLRequest(url: url)
            self.webview.load(request)
        }
        LoadingProxy.set(v: self); //表示する親をセット
        LoadingProxy.on();//ローディング表示。非表示にする場合はoff
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            LoadingProxy.off();// 0.5秒後に実行したい処理
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

