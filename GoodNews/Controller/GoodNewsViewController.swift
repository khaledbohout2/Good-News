//
//  GoodNewsViewController.swift
//  GoodNews
//
//  Created by Khaled Bohout on 3/22/20.
//  Copyright © 2020 Khaled Bohout. All rights reserved.
//

import Foundation
import UIKit


class GoodNewsViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=2df1fad757ab4a3ba23757432a08ea11")!
        WebService().getArticles(url: url) { (result) in
            
        }

    }
}
