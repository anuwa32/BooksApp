//
//  HomeView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-06.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                BookList(books: Book.all)
            }
            .navigationTitle("My Books")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
