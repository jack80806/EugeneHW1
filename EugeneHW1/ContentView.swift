//
//  ContentView.swift
//  EugeneHW1
//
//  Created by User24 on 2021/3/7.
//  Copyright © 2021 yuen. All rights reserved.
//

import SwiftUI
import AVFoundation
var randomQuestion:[Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
struct ContentView: View {
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    @State var nowQIndex: Int = 0
    @State var Score: Int = 0
    @State var FScore: Int = 0
    @State var gameOver = false
    var body: some View {
        ZStack{
            Image("backGround")
            VStack {
                VStack{
                    Text("元宵猜燈謎")
                        .background(Color.black)
                        .font(.system(size: 50))
                        .foregroundColor(Color.red)
                        .offset(x: 0, y: -150)
                }
                VStack{
                    Text("第" + String(nowQIndex + 1) + "題")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                        .offset(x: 0, y: -100)
                        
                }
                HStack(alignment: .center){
                    HStack() {
                        Button(action:{
                            let utterance =  AVSpeechUtterance(string: QuestionBank[randomQuestion[nowQIndex]].Question)
                            utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                            utterance.rate = 0.4
                            let synthesizer = AVSpeechSynthesizer()
                            synthesizer.speak(utterance)
                        }){
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .background(Color.white)
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color.red)
                        }
                    }
                    HStack{
                        Text(QuestionBank[randomQuestion[nowQIndex]].Question)
                            .font(.system(size: 35))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                    }
                }
                .foregroundColor(Color(red: 0.9, green: 0.3, blue: 0.2))
                .offset(x: 0, y: -60)
                HStack{
                    HStack(alignment: .center){
                        Button(action: {
                            if QuestionBank[randomQuestion[nowQIndex]].selection[0] == QuestionBank[randomQuestion[nowQIndex]].Ans{
                                self.Score = self.Score + 10
                            }
                            self.nowQIndex = self.nowQIndex+1
                            if nowQIndex >= 10{
                                FScore = Score
                                randomQuestion.shuffle()
                                Score = 0
                                nowQIndex = 0
                                gameOver = true
                            }
                            QuestionBank[randomQuestion[nowQIndex]].selection.shuffle()
                        }){
                            Text(QuestionBank[randomQuestion[nowQIndex]].selection[0])
                                .foregroundColor(Color.black)
                                .font(.system(size: 30))
                        }
                        .frame(width: 50, height: 50)
                        .padding(0)
                    }
                    
                    HStack(alignment: .center){
                        Button(action: {
                            if QuestionBank[randomQuestion[nowQIndex]].selection[1] == QuestionBank[randomQuestion[nowQIndex]].Ans{
                                self.Score = self.Score + 10
                            }
                            
                            self.nowQIndex = self.nowQIndex+1
                            if nowQIndex >= 10{
                                FScore = Score
                                randomQuestion.shuffle()
                                Score = 0
                                nowQIndex = 0
                                gameOver = true                        }
                            QuestionBank[randomQuestion[nowQIndex]].selection.shuffle()
                            
                        }){
                            Text(QuestionBank[randomQuestion[nowQIndex]].selection[1])
                                .foregroundColor(Color.black)
                                .font(.system(size: 30))
                        }
                        .frame(width: 50, height: 50)
                        .padding(0)
                    }
                    HStack(alignment: .center){
                        Button(action: {
                            if QuestionBank[randomQuestion[nowQIndex]].selection[2] == QuestionBank[randomQuestion[nowQIndex]].Ans{
                                self.Score = self.Score + 10
                            }
                            self.nowQIndex = self.nowQIndex+1
                            if nowQIndex >= 10{
                                FScore = Score
                                randomQuestion.shuffle()
                                Score = 0
                                nowQIndex = 0
                                gameOver = true
                            }
                            QuestionBank[randomQuestion[nowQIndex]].selection.shuffle()
                        }){
                            Text(QuestionBank[randomQuestion[nowQIndex]].selection[2])
                                .foregroundColor(Color.black)
                                .font(.system(size: 30))
                                
                        }
                        .frame(width: 50, height: 50)
                        .padding(0)
                    }
                }
                VStack{
                    Text("得分: " + String(self.Score))
                        .font(.system(size: 50))
                }.padding(40)
                VStack{
                    Button(action: {
                        randomQuestion.shuffle()
                        Score = 0
                        nowQIndex = 0
                        
                    }){
                        Text("Restart")
                            .font(.system(size: 25))
                            .foregroundColor(Color.orange)
                            .background(Color.pink)
                    }
                }
            }.onAppear(perform: {randomQuestion.shuffle()})
            .alert(isPresented: $gameOver) { () -> Alert in
                
                return Alert(title: Text("Score: " + String(self.FScore)))
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



