//
//  SettingsView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-06.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("Settings")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
