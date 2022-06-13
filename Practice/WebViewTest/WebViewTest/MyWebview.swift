//
//  MyWebview.swift
//  WebViewTest
//
//  Created by 양유진 on 2022/04/15.
//

import SwiftUI
import WebKit


// UIKit의 uiview를 사용할 수 있도록 한다.
// UIViewControllerRepresentable
//
struct MyWebview: UIViewRepresentable{

    
    var urlToLoad: String
    // UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // WEBVIEW 인스턴스 생성
        let webview = WKWebView()
        
        // WEBVIEW LOAD
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // UPDATE UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
