//
//  ViewController.swift
//  Internet Browser
//
//  Created by Mirko Cukich on 10/5/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webBrowserView: WKWebView!
    
    @IBOutlet weak var actionIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // default url loaded on app start
        let url = URL(string: "http://www.google.com")
        let request = URLRequest(url: url!)
        
        webBrowserView.load(request)
        
    }

    
    @IBAction func backBtn(_ sender: Any) {
        
        if webBrowserView.canGoBack {
            webBrowserView.goBack()
        }
    }
    
    @IBAction func forwardBtn(_ sender: Any) {
        
        if webBrowserView.canGoForward {
            webBrowserView.goForward()
        }
    }
    
    @IBAction func refreshBtn(_ sender: Any) {
        
        webBrowserView.reload()
        
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        
        webBrowserView.stopLoading()
    }
    
    

}

