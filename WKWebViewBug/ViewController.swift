//
//  ViewController.swift
//  WKWebViewBug
//
//  Created by Yuriy Savitskiy on 17/06/2019.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var mainContainerView: UIView!
    
    lazy var webView = { () -> WKWebView in
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.contentMode = .scaleAspectFit
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.backgroundColor = UIColor.black
        webView.scrollView.backgroundColor = UIColor.black
        webView.backgroundColor = UIColor.black
        webView.scrollView.showsHorizontalScrollIndicator = false
        webView.scrollView.showsVerticalScrollIndicator = false
        
        return webView
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainContainerView.fillWith(view: webView)
        
        let html = HtmlView.getHtml(forID: "wl4Hg23RQHQ")
        webView.loadHTMLString(html, baseURL: nil)
    }   
}

