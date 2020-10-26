//
//  AsiaTab.swift
//  nomaderaproject
//
//  Created by Matayo Rague on 10/15/20.
//

import Foundation
import WebKit
import SafariServices

class AsiaTab: UIViewController, WKUIDelegate{
var webView: WKWebView!

override func loadView() {
    let webConfiguration = WKWebViewConfiguration()
    webView = WKWebView(frame: .zero, configuration: webConfiguration)
    webView.uiDelegate = self
    view = webView
}
override func viewDidLoad() {
    super.viewDidLoad()
    
    let myURL = URL(string:"https://nomad-era.com/asia-pacific/")
    let myRequest = URLRequest(url: myURL!)
    webView.load(myRequest)
}
}
