//
//  BookView.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-07.
//

import SwiftUI

struct BookView: View {
    var book: Book

    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: book.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)

            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                        
            VStack(spacing: 120) {
                Text(book.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)

                VStack(alignment: .leading, spacing: 50){
                    if !book.description.isEmpty {
                        Text(book.description)
                    }

                    if !book.author.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Author")
                                .font(.headline)
                            Text(book.author)
                        }
                    }
                    
                    if !book.category.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Category")
                                .font(.headline)
                            
                            Text(book.category)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)

            }
            .padding(.horizontal)
            //.padding(.vertical)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        
            BookView(book: Book.all[1])
    
    }
}
