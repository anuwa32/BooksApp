//
//  NewBookView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-06.
//

import SwiftUI

struct NewBookView: View {
    var body: some View {
        NavigationView{
            Text("New Book")
                .navigationTitle("New Book")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
