//
//  Article.swift
//  GoodNews
//
//  Created by Khaled Bohout on 3/22/20.
//  Copyright © 2020 Khaled Bohout. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    
    let articles: [Article]
}
struct Article: Decodable {
    
   let title: String
   let description: String?
}
