//
//  FavouritesView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-06.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView{
            Text("You haven't saved any recipe to your favourites yet.")
                .padding()
                .navigationTitle("Favourites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
