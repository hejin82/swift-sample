//
//  BookStore.swift
//  BookStore
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import Foundation

class BookStore {
    var bookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "Swift for Absolute Beginners"
        newBook.author = "Bennett and lees"
        newBook.description = "iOS programming made easy"
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "a farewell to arms"
        newBook.author = "ernest hemingway"
        newBook.description = "the story of an affair between an english nurse and an american soldier on the italian front during world war I"
        bookList.append(newBook)
    }
}
