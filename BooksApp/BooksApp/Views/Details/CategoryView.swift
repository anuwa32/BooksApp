//
//  CategoryView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-07.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    //Computed property
    var books: [Book] {
        return Book.all.filter{$0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            BookList(books: books)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.classic)
    }
}
