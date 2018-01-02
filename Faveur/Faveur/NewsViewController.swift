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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

