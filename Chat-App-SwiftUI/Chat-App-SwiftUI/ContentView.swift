//
//  ContentView.swift
//  Chat-App-SwiftUI
//
//  Created by Dilber KILIÇ on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode=false
    
    var body: some View {
        NavigationView{
            ScrollView{
                Picker(selection: $isLoginMode, label: Text("picker here")){
                    Text("Login")
                    Text("Create Account")
                }.pickerStyle(SegmentedPickerStyle()).padding()
                Text("HERE ITS ME")
            }.navigationTitle("Create Account")
        }
            Text("Login Page").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
