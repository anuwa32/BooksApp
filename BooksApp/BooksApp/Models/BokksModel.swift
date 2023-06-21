//
//  BokksModel.swift
//  BooksApp
//
//  Created by anupriya on 2023-05-06.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case adventure = "Adventure"
    case classic   = "Classic"
    case crime     = "Crime"
    case fantasy   = "Fantasy"
    case horror    = "Horror"
    case history   = "History"
    case biography = "Biography"
    
}

struct Book: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let author: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Book {
    static let all: [Book] = [
        Book(
            name: "Harry Potter and the Philosopher's Stone",
            image: "https://cdn.europosters.eu/image/1300/harry-potter-1st-year-i106148.jpg",
            description: "Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.",
            author: "J. K. Rowling",
            category: "Adventure",
            datePublished: "1997-06-26",
            url: "https://books.google.lk/books/about/Harry_Potter_and_the_Sorcerer_s_Stone.html?id=wrOQLV6xB-wC&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "The Sea of Monsters",
            image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1400602661i/28186.jpg",
            description: "The Sea of Monsters is an American fantasy-adventure novel based on Greek mythology written by Rick Riordan and published in 2006. It is the second novel in the Percy Jackson & the Olympians series and the sequel to The Lightning Thief.",
            author: "Rick Riordan",
            category: "Adventure",
            datePublished: "2007-04-01",
            url: "https://books.google.lk/books/about/Sea_of_Monsters_The_Percy_Jackson_and_th.html?id=gLPvoLN0meUC&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "Charlie and the Chocolate Factory",
            image: "https://books.google.lk/books/publisher/content?id=BwAvEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70jgWHFve0UqrzHig9B5czwdET7svabGTjsDMZBPzyNh7JGx_MmcoOUUOBCcoFhevcPmNQMSUu2ZFCVdLLfqfpaHb4zIVpTF9zeRoSFn78djalEVRZVXfA-pn_aU46eAXNbnurW",
            description: "Charlie and the Chocolate Factory is a 1964 children's novel by British author Roald Dahl. The story features the adventures of young Charlie Bucket inside the chocolate factory of eccentric chocolatier Willy Wonka.",
            author: "Roald Dahl",
            category: "Adventure",
            datePublished: "2021-05-24",
            url: "https://books.google.lk/books/about/Charlie_and_the_Chocolate_Factory.html?id=BwAvEAAAQBAJ&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "Matilda",
            image: "https://books.google.lk/books/publisher/content?id=ggbLDwAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE714EExktYLYP6c2Ip8hcV6jcVRJiZerjaUHN4uoSEs0ZcdJGGo2S5yWg0N9zMPc7YNgfzra_Skw1T_f8Ua044lk-Km0q6NjcxefN2-AR0hx1sGzU52-nxf4r596uIL6d8zHDIuG",
            description: "Matilda is a children's novel written by British writer Roald Dahl and illustrated by Quentin Blake. It was published in 1988 by Jonathan Cape. The story features Matilda Wormwood, a precocious child with an uncaring mother and father, and her time in school run by the tyrannical headmistress Miss Trunchbull.",
            author: "Roald Dahl",
            category: "Fantasy",
            datePublished: "2020-10-13",
            url: "https://books.google.lk/books/about/Matilda.html?id=ggbLDwAAQBAJ&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "The ​Graveyard Book",
            image: "https://books.google.lk/books/content?id=eu2z740u7QwC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73USbSCGLkKYRIix8kPS3NjKkF8y1NOv1XD_OEpqiNYkAV_FwflkWd8SCO58TGeM7YgiJqC-gmch4_RDGiKwN2IXrlVfUGMi-zbiBiHYqyV4I6hrEmQHtFGe8DHg9MRLOiOqoye",
            description: "The Graveyard Book is a young adult novel by the English author Neil Gaiman, simultaneously published in Britain and America in 2008. The Graveyard Book traces the story of the boy Nobody Owens who is adopted and reared by the supernatural occupants of a graveyard after his family is brutally murdered.",
            author: "Neil Gaiman",
            category: "Horror",
            datePublished: "2009-11-02",
            url: "https://books.google.lk/books/about/The_Graveyard_Book.html?id=eu2z740u7QwC&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "Framed",
            image: "https://books.google.lk/books/publisher/content?id=D5apCgAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70X_bd1GXTijJ1muLYaxpBVf7a9qYsDpeDUGltKgctuPcDDxNYrClFFi6mqUVIn-1N0ng3fWAmsTa-yf_zkBeAUiB_oiIjnNQHRPK94wyKa18VVrA55ovkd6g3qj6UKbKVyGM4s",
            description: "Get to know the only kid on the FBI Director’s speed dial and several international criminals’ most wanted lists all because of his Theory of All Small Things in this hilarious start to a brand-new",
            author: "James Ponti",
            category: "Crime",
            datePublished: "2016-08-16",
            url: "https://books.google.lk/books/about/Framed.html?id=D5apCgAAQBAJ&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "Sarah, Plain and Tall",
            image: "https://books.google.lk/books/content?id=ppo38aWjzYsC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72g00Dlh5m60UoYXwMuwDFAdHCAL-L4CigzZwwf8DRtgzN1JSqIAfnmKEXj_buacZOZ-ooRQfa7LgNld2FTB1Jj0LUJTKhCGwlE2tgcSPpv28Tz1xVu4xYkoNKisuF21FGenMs9",
            description: "Sarah, Plain and Tall is a children's book written by Patricia MacLachlan and the winner of the 1986 Newbery Medal, the 1986 Scott O'Dell Award for Historical Fiction, and the 1986 Golden Kite Award. It explores themes of loneliness, abandonment, and coping with change.",
            author: "Patricia MacLachlan",
            category: "History",
            datePublished: "2013-06-25",
            url: "https://books.google.lk/books/about/Sarah_Plain_and_Tall.html?id=ppo38aWjzYsC&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "Brown Girl Dreaming",
            image: "https://books.google.lk/books/publisher/content?id=qrkWBAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71diV2mQTw9qcvSDqKaEuF1xM41LI0B3KRUadYsIyLgZtI47Nul5cCP9xxnfe5Oyj7lGvaKAea1WIcz0ewP-U38rTudRRI6BIRSpQpboA4xMZxAWCKWhsmxfY3nPfm5lgmGzMVs",
            description: "Brown Girl Dreaming is a 2014 adolescent verse novel by author Jacqueline Woodson. It discusses the author's childhood as an African American growing up in the 1960s in South Carolina and New York.",
            author: "Jacqueline Woodson",
            category: "Adventure",
            datePublished: "2014-08-28",
            url: "https://books.google.lk/books/about/Brown_Girl_Dreaming.html?id=qrkWBAAAQBAJ&source=kp_cover&redir_esc=y"
        ),
        Book(
            name: "SPACEBOY",
            image: "https://books.google.lk/books/content?id=5F0tzwEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72D8vGjOin5EqcjsjxBhnS5cM3GrrMz0EsySX1U6b0bEXDaXb-38J6Kvh5HF8Ek14z3kGRRzc0KfjfMCCtZ4gcWZ5lnokamy3dYU-FQhJp-Szcm9t3nr78pzd0qX7uO89uV6OgU",
            description: "Go back to the Space Race with No.1 bestselling author David Walliams for a breathless cinematic adventure full of mystery, action, laughs and surprises – and a secret that could change the course of history... America. The 1960s.",
            author: "David Walliams",
            category: "Adventure",
            datePublished: "2022-06-18",
            url: "https://books.google.lk/books/about/Spaceboy.html?id=5F0tzwEACAAJ&source=kp_cover&redir_esc=y"
        ),
        
    ]
}
