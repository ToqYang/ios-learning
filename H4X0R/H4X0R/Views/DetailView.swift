//
//  DetailView.swift
//  H4X0R
//
//  Created by Santiago Toquica Yanguas on 5/01/24.
//
import SwiftUI

struct DetailView: View, WebView {
    
    let url: String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
