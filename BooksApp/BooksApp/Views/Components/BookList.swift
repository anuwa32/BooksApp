//
//  BookList.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-07.
//

import SwiftUI

struct BookList: View {
    var books: [Book]
    var body: some View {
        
            VStack {
                HStack {
                    Text("\(books.count) \(books.count > 1 ? "books" : "book")")
                        .font(.headline)
                        .fontWeight(.medium)
                    .opacity(0.7)
                    
                    Spacer()
                }
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 25)], spacing: 25) {
                    ForEach(books) { book in
                        NavigationLink(destination: BookView(book: book)) {
                            BookCard(book: book)
                        }
                    }
                }
                .padding(.top)
            }
            .padding(.horizontal)
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            BookList(books: Book.all)
        }
    }
}
