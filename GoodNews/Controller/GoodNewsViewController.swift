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

    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=2df1fad757ab4a3ba23757432a08ea11")!
        WebService().getArticles(url: url) { (result) in
            
            if let articleList = result {
            self.articleListVM = ArticleListViewModel(articleList: articleList)
            
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            
            }
            
        }

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell", for: indexPath) as? ArticlesTableViewCell else {
            fatalError("Article List Not Found")
        }
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        cell.titleLbl.text = articleVM.title
        cell.descriptionLbl.text = articleVM.descroption
        
        return cell
    }
}
