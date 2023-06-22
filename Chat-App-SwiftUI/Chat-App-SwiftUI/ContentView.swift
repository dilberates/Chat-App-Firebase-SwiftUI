//
//  ContentView.swift
//  Chat-App-SwiftUI
//
//  Created by Dilber KILIÇ on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode=false
    @State var email=""
    @State var password=""
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack{
                    Picker(selection: $isLoginMode, label: Text("picker here")){
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle()).padding()
                    
                    Button {
                        
                    }label: {
                        Image(systemName: "person.fill")
                            .font(.system(size: 70))
                            .padding()
                    }
                    
                    TextField( "Email",text: $email)
                    TextField("Password",text: $password)
                    
                    Button{}label: {
                        HStack{
                            Text("Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                            Spacer()
                            
                        }.background(Color.blue)
                    }
                    
                    Text("HERE ITS ME")
                }.navigationTitle("Create Account")
            }
                Text("Login Page").padding()
        }.padding()
                
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
