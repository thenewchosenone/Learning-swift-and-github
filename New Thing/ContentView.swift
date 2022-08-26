//
//  ContentView.swift
//  New Thing
//
//  Created by Robert Jeanty on 8/20/22.
//

import SwiftUI




struct ContentView: View {
    @State private var Credits = 1000
    @State private var slot1 = 1
    @State private var slot2 = 1
    @State private var slot3 = 1
    
    
    var body: some View {
        ZStack{
            
            VStack{
                
                Spacer()
                Text("Swift Slots")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .opacity(/*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20.0)
                Spacer()
                
                Text("Credits: \(Credits)")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .opacity(/*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25.0)
                    
                
                Spacer()
                
                
                HStack{
                    
                    Image("fruit\(slot1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("fruit\(slot2)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("fruit\(slot3)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    
                }
                Spacer()
                VStack{
                    Button("Lets Play") {
                        slot1 = Int.random(in: 1...3)
                        slot2 = Int.random(in: 1...3)
                        slot3 = Int.random(in: 1...3)
                        
                        if slot1 == slot2 && slot2 == slot3 {
                            Credits += 30
                        }
                        else {
                            Credits -= 5
                            
                            
                        }
                    }
                    .padding()
                    .padding([.leading, .trailing], 40)
                    .foregroundColor(.white)
                    .background(Color(.systemPink))
                    .cornerRadius(25)
                    .font(.system(size: 18, weight: .bold, design: .default))
                }
                
                Spacer()
            }
            .background(Image("background")
                .resizable(resizingMode: .stretch))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
