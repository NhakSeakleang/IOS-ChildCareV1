//
//  MessageVC.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MessageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    func setUp() {
        view.backgroundColor = .white
        title = "Messages"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Search").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(searchClick))
    }
    
    @objc func searchClick() {
        
    }

}
