//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Khaled Bohout on 3/27/20.
//  Copyright © 2020 Khaled Bohout. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    
     let articleList: [Article]
}

extension ArticleListViewModel {

    var numberOfSections : Int {
        return 1
    }
    
    func numberOfRowsInSection(_ index: Int) -> Int {
        return articleList.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articleList[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    
    private let articl: Article
    
    var title: String {
        return self.articl.title
    }
    
    var descroption: String {
        return self.articl.description!
    }
}

extension ArticleViewModel {
    
    init(_ article: Article) {
        self.articl = article
    }
}
