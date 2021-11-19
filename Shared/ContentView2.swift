//
//  ContentView2.swift
//  SwiftUI_Path_Drawing
//
//  Created by 沈秉叡 on 2021/11/15.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        ZStack {
            Text("我需要錢")
                .font(.system(size: 33.5,design:.rounded))
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding()
                .multilineTextAlignment(.center)
                .position(x: 200, y: 580)
                .offset(x: 7, y: -20)
            Group {
                WholeBody()
                Face()
                WholePants2()
            }.offset(x: -5, y: -10)
        }
        .background(Image("BackgroundOcean").resizable().frame(width: 750,height: 860))
        .navigationBarHidden(true)
    }
}

struct WholePants2: View {
    var body: some View {
        ZStack {
            Group {
                Pants().fill(Color(red: 220/255, green: 150/255, blue: 100/255))
                Pants().stroke()
                PantsTether().stroke()
                PantsPattern1().fill(Color(red: 50/255, green: 200/255, blue: 150/255))
                PantsPattern1().stroke()
                PantsPattern2().fill(Color(red: 50/255, green: 200/255, blue: 150/255))
                PantsPattern2().stroke()
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView2()
        }
    }
}
