//
//  ViewController.swift
//  Bookist
//
//  Created by Harry Ng on 20/02/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Kindle"
        
        view.backgroundColor = .red
        //ready to write some custom logic
        
        setupBooks()
    }
    
    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
        
        guard let books = self.books else { return }
        
        //        for book in books {
        //            print(book.title)
        //            for page in book.pages {
        //                print(page.text)
        //            }
        //        }
        
        if let unwrappedBooks = self.books {
            for book in unwrappedBooks {
                print(book.title)
                for page in book.pages {
                    print(page.text)
                }
            }
        }
    }
    
}

