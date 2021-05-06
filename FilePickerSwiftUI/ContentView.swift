//
//  ContentView.swift
//  FilePickerSwiftUI
//
//  Created by Илья on 06.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var shown = false
    
    var body: some View {
        Button(action: {
                shown.toggle()}) {
            Text("Documnet picker")
        }.sheet(isPresented: $shown) {
            DocumentPicker()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
