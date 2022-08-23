//
//  ViewController.swift
//  tpatti2022
//
//  Created by Dmitry Kaveshnikov on 08/22/2022.
//  Copyright (c) 2022 Dmitry Kaveshnikov. All rights reserved.
//

import UIKit
import tpatti2022

class ViewController: UIViewController {
    
    let articleManager = ArticleManager()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        let art1 = articleManager.newArticle()
        
        art1.title = "Title1"
        art1.content = "Content1"
        art1.creationData = Date()
        art1.modificationDate = Date()
        art1.language = "en"
        articleManager.save()
        print(articleManager.getAllArticles())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

