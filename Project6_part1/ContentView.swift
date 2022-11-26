//
//  ContentView.swift
//  Project6_part1
//
//  Created by K.Takahama on R 4/11/26.
//

import SwiftUI

struct ContentView: View {
    //アニメーションをやっていきます
    //スケールを格納するプロパティを作成
    @State private var animationAmount = 1.0
    
    var body: some View {
        //ボタンを押したらスケールが大きくなるボタンを作っていきます
        Button("Tap me") {
//            animationAmount += 1
        }
        .padding(20)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 2)
                    .repeatForever(autoreverses: false),
                    value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
