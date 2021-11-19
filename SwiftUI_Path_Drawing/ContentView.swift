//
//  ContentView.swift
//  Shared
//
//  Created by 沈秉叡 on 2021/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: ContentView2()) {
                    Text("我需要錢")
                        .font(.system(size: 33.5,design:.rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding()
                        .multilineTextAlignment(.center)
                        .position(x: 200, y: 580)
                        .offset(x: 7, y: -20)
                }
                Group {
                    WholeBody()
                    Face()
                    WholePants()
                }.offset(x: -5, y: -10)
            }
            .background(Image("BackgroundOcean").resizable().frame(width: 750,height: 860))
            .navigationBarHidden(true)
        }
    }
}

struct UpperBody: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 150, y: 230))
            path.addQuadCurve(to: CGPoint(x: 220, y: 230), control: CGPoint(x: 100, y: 100))
            path.addQuadCurve(to: CGPoint(x: 260, y: 310), control: CGPoint(x: 257, y: 290))
            path.addQuadCurve(to: CGPoint(x: 300, y: 400), control: CGPoint(x: 300, y: 350))
            path.addQuadCurve(to: CGPoint(x: 110, y: 400), control: CGPoint(x: 205, y: 450))
            path.addQuadCurve(to: CGPoint(x: 150, y: 230), control: CGPoint(x: 160, y: 280))
        }
    }
}

struct BellyButton: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 225, y: 405))
            path.addQuadCurve(to: CGPoint(x: 235, y: 405), control: CGPoint(x: 230, y: 410))
            path.move(to: CGPoint(x: 220, y: 410))
            path.addQuadCurve(to: CGPoint(x: 240, y: 410), control: CGPoint(x: 230, y: 420))
        }
    }
}

struct RightArm: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 143, y: 330))
            path.addQuadCurve(to: CGPoint(x: 50, y: 410), control: CGPoint(x: 70, y: 360))
            path.addQuadCurve(to: CGPoint(x: 140, y: 380), control: CGPoint(x: 30, y: 470))
        }
    }
}

struct LeftArm: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 259, y: 308))
            path.addQuadCurve(to: CGPoint(x: 340, y: 440), control: CGPoint(x: 370, y: 400))
            path.addQuadCurve(to: CGPoint(x: 300, y: 402), control: CGPoint(x: 330, y: 450))
        }
    }
}

struct RightLeg: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 130, y: 491))
            path.addQuadCurve(to: CGPoint(x: 186, y: 492), control: CGPoint(x: 158, y: 550))
        }
    }
}

struct LeftLeg: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 225, y: 491))
            path.addQuadCurve(to: CGPoint(x: 280, y: 492), control: CGPoint(x: 255, y: 550))
        }
    }
}

struct Pants: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 110, y: 400))
            path.addCurve(to: CGPoint(x: 125, y: 490), control1: CGPoint(x: 100, y: 440), control2: CGPoint(x: 130, y: 450))
            path.addQuadCurve(to: CGPoint(x: 190, y: 490), control: CGPoint(x: 160, y: 500))
            path.addLine(to: CGPoint(x: 190, y: 477))
            path.addQuadCurve(to: CGPoint(x: 220, y: 477), control: CGPoint(x: 200, y: 480))
            path.addLine(to: CGPoint(x: 220, y: 490))
            path.addQuadCurve(to: CGPoint(x: 285, y: 490), control: CGPoint(x: 255, y: 500))
            path.addCurve(to: CGPoint(x: 300, y: 400), control1: CGPoint(x: 280, y: 430), control2: CGPoint(x: 320, y: 450))
            path.addQuadCurve(to: CGPoint(x: 110, y: 400), control: CGPoint(x: 205, y: 452))
            
        }
    }
}

struct PantsTether: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 109, y: 402))
            path.addQuadCurve(to: CGPoint(x: 301, y: 402), control: CGPoint(x: 205, y: 452))
        }
    }
}

struct PantsPattern1: Shape {
    func  path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 148, y: 418))
            path.addCurve(to: CGPoint(x: 170, y: 450), control1: CGPoint(x: 160, y: 470), control2: CGPoint(x: 170, y: 410))
            path.addQuadCurve(to: CGPoint(x: 200, y: 450), control: CGPoint(x: 185, y: 460))
            path.addCurve(to: CGPoint(x: 220, y: 427), control1: CGPoint(x: 205, y: 420), control2: CGPoint(x: 210, y: 470))
            path.addQuadCurve(to: CGPoint(x: 148, y: 418), control: CGPoint(x: 180, y: 431))
        }
    }
}

struct PantsPattern2: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 255, y: 495))
            path.addQuadCurve(to: CGPoint(x: 255, y: 480), control: CGPoint(x: 252, y: 488))
            path.addCurve(to: CGPoint(x: 287, y: 460), control1: CGPoint(x: 290, y: 480), control2: CGPoint(x: 240, y: 465))
            path.addQuadCurve(to: CGPoint(x: 285, y: 490), control: CGPoint(x: 283, y: 490))
            path.addQuadCurve(to: CGPoint(x: 255, y: 495), control: CGPoint(x: 273, y: 495))
        }
    }
}

struct Eyebrow: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 180, y: 250))
            path.addLine(to: CGPoint(x: 170, y: 263))
            path.move(to: CGPoint(x: 180, y:255))
            path.addLine(to: CGPoint(x: 170, y: 268))
            
            path.move(to: CGPoint(x: 205, y: 243))
            path.addLine(to: CGPoint(x: 223, y: 246))
            path.move(to: CGPoint(x: 205, y: 247))
            path.addLine(to: CGPoint(x: 223, y: 250))
        }
    }
}

struct Eyes: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 185, y: 260))
            path.addQuadCurve(to: CGPoint(x: 210, y: 285), control: CGPoint(x: 203, y: 260))
            path.addQuadCurve(to: CGPoint(x: 195, y: 306), control: CGPoint(x: 210, y: 305))
            path.addQuadCurve(to: CGPoint(x: 178, y: 290), control: CGPoint(x: 182, y: 302))
            path.addQuadCurve(to: CGPoint(x: 185, y: 260), control: CGPoint(x: 175, y: 265))
            
            path.move(to: CGPoint(x: 200, y: 266))
            path.addQuadCurve(to: CGPoint(x: 228, y: 260), control: CGPoint(x: 210, y: 245))
            path.addQuadCurve(to: CGPoint(x: 230, y: 300), control: CGPoint(x: 243, y: 288))
            path.addQuadCurve(to: CGPoint(x: 209, y: 295), control: CGPoint(x: 218, y: 305))
        }
    }
}

struct Pupils: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 195, y: 270))
            path.addQuadCurve(to: CGPoint(x: 205, y: 285), control: CGPoint(x: 203, y: 273))
            path.addQuadCurve(to: CGPoint(x: 192, y: 283), control: CGPoint(x: 200, y: 295))
            path.addQuadCurve(to: CGPoint(x: 195, y: 270), control: CGPoint(x: 188, y: 270))
            
            path.move(to: CGPoint(x: 215, y: 270))
            path.addQuadCurve(to: CGPoint(x: 223, y: 285), control: CGPoint(x: 225, y: 273))
            path.addQuadCurve(to: CGPoint(x: 213, y: 283), control: CGPoint(x: 218, y: 290))
            path.addQuadCurve(to: CGPoint(x: 215, y: 270), control: CGPoint(x: 207, y: 270))
        }
    }
}

struct Mouth: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 235, y: 315))
            path.addQuadCurve(to: CGPoint(x: 230, y: 330), control: CGPoint(x: 280, y: 340))
            path.addQuadCurve(to: CGPoint(x: 210, y: 333), control: CGPoint(x: 220, y: 331))
            path.addQuadCurve(to: CGPoint(x: 200, y: 320), control: CGPoint(x: 155, y: 350))
            path.addQuadCurve(to: CGPoint(x: 235, y: 315), control: CGPoint(x: 215, y: 308))
        }
    }
}

struct Teeth: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 190, y: 339))
            path.addQuadCurve(to: CGPoint(x: 200, y: 336), control: CGPoint(x: 195, y: 315))
            path.move(to: CGPoint(x: 200, y: 320))
            path.addQuadCurve(to: CGPoint(x: 210, y: 315), control: CGPoint(x: 208, y: 335))
            path.move(to: CGPoint(x: 211, y: 332))
            path.addQuadCurve(to: CGPoint(x: 226, y: 330), control: CGPoint(x: 215, y: 311))
            path.move(to: CGPoint(x: 224, y: 313))
            path.addQuadCurve(to: CGPoint(x: 235, y: 315), control: CGPoint(x: 230, y: 335))
            path.move(to: CGPoint(x: 234, y: 330))
            path.addQuadCurve(to: CGPoint(x: 250, y: 333), control: CGPoint(x: 240, y: 313))
        }
    }
}

struct Face: View {
    var body: some View {
        ZStack {
            Group {
                Eyebrow().stroke(lineWidth: 4)
                Eyes().fill(Color(red: 1, green: 1, blue: 1))
                Eyes().stroke()
                Pupils()
                Mouth().fill(Color(red: 50/255, green: 0, blue: 0))
                Mouth().stroke()
                Teeth().fill(Color(red: 1, green: 1, blue: 1))
            }
        }
    }
}

struct WholeBody: View {
    var body: some View {
        ZStack {
            Group {
                UpperBody().fill(Color(red: 1, green: 155/255, blue: 155/255))
                UpperBody().stroke()
                BellyButton().stroke()
            }
            Group {
                RightArm().fill(Color(red: 1, green: 155/255, blue: 155/255))
                RightArm().stroke()
                LeftArm().fill(Color(red: 1, green: 155/255, blue: 155/255))
                LeftArm().stroke()
                RightLeg().fill(Color(red: 1, green: 155/255, blue: 155/255))
                RightLeg().stroke()
                LeftLeg().fill(Color(red: 1, green: 155/255, blue: 155/255))
                LeftLeg().stroke()
            }
        }
    }
}

struct WholePants: View {
    var body: some View {
        ZStack {
            Group {
                Pants().fill(Color(red: 0, green: 240/255, blue: 0))
                Pants().stroke()
                PantsTether().stroke()
                PantsPattern1().fill(Color(red: 180/255, green: 70/255, blue: 200/255))
                PantsPattern1().stroke()
                PantsPattern2().fill(Color(red: 180/255, green: 70/255, blue: 200/255))
                PantsPattern2().stroke()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
