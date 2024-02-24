//
//  ContentView.swift
//  aprendizajeCard
//
//  Created by Santiago Toquica Yanguas on 3/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("ios-development")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Learning")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS development")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                InfoView(text: "+80908 3543843", imageName: "phone.fill")
                
                InfoView(text: "test@mail.com", imageName: "envelope.fill")
                    
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

