//
//  ContentView.swift
//  TrainingApp
//
//  Created by Malcolm Lennartsson on 2022-01-11.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            VStack {
                Text("Learn2Train").font(.largeTitle).fontWeight(.semibold).padding(.bottom, 20)
                Image("training").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.bottom, 75)
                TextField("Username", text: $username).padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password).padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                NavigationLink(destination: MenuView()){
                    Text("LOGIN")
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
            }
        }
        
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

