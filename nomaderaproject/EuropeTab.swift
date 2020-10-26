//
//  EuropeTab.swift
//  nomaderaproject
//
//  Created by Matayo Rague on 10/15/20.
//

import Foundation
import WebKit

class EuropeTab: UIViewController, WKUIDelegate{
var webView: WKWebView!

override func loadView() {
    let webConfiguration = WKWebViewConfiguration()
    webView = WKWebView(frame: .zero, configuration: webConfiguration)
    webView.uiDelegate = self
    view = webView
}
override func viewDidLoad() {
    super.viewDidLoad()
    
    let myURL = URL(string:"https://nomad-era.com/europe/")
    let myRequest = URLRequest(url: myURL!)
    webView.load(myRequest)
}
}
