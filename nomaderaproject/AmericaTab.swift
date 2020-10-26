//
//  AmericaTab.swift
//  nomaderaproject
//
//  Created by Matayo Rague on 10/15/20.
//

import Foundation
import WebKit

class AmericaTab: UIViewController, WKUIDelegate{
var webView: WKWebView!

override func loadView() {
    let webConfiguration = WKWebViewConfiguration()
    webView = WKWebView(frame: .zero, configuration: webConfiguration)
    webView.uiDelegate = self
    view = webView
}
override func viewDidLoad() {
    super.viewDidLoad()
    
    let myURL = URL(string:"https://nomad-era.com/us_canada/")
    let myRequest = URLRequest(url: myURL!)
    webView.load(myRequest)
}
}
