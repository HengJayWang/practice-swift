//
//  BrowserViewController.swift
//  Browser
//
//  Created by Domenico on 21/04/16.
//  Copyright © 2016 Domenico Solazzo. All rights reserved.
//

import UIKit

class BrowserViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var backButton: UIToolbar!
    @IBOutlet weak var forwardButton: UIToolbar!
    
    var url: String = "http://www.google.com"
    
    @IBAction func goBack(sender: UIBarButtonItem) {
        if(webView.canGoBack){
            webView.goBack()
        }
    }
    
    @IBAction func goForward(sender: UIBarButtonItem) {
        if(webView.canGoForward){
            webView.goForward()
        }
    }
}
