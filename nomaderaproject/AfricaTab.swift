//
//  AfricaTab.swift
//  nomaderaproject
//
//  Created by Matayo Rague on 10/14/20.
//

import Foundation
import UIKit
import WebKit
class AfricaTab: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://nomad-era.com/news/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
