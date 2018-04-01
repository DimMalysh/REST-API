//
//  ChannelViewController.swift
//  TwitchAPI
//
//  Created by mac on 01.04.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import UIKit
import WebKit

class ChannelViewController: UIViewController {

    var stream: Stream!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        
        let urlString = TWITCH_URL_PLAYER_BASE + stream.broadcasterName
        
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
}
