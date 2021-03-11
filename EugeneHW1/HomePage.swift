//
//  HomePage.swift
//  EugeneHW1
//
//  Created by User24 on 2021/3/8.
//  Copyright © 2021 yuen. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("元宵猜燈謎")
                    .font(.system(size: 50))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(x: 0, y: -200)
                NavigationLink(destination: ContentView()){
                    Text("開始遊戲")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                }
                
            }.onAppear{
                }
        .preferredColorScheme(.dark)
        }
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
