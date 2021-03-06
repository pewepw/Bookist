//
//  Modals.swift
//  Bookist
//
//  Created by Harry Ng on 21/02/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//


import Foundation

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title = title
        self.author = author
        self.pages = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
