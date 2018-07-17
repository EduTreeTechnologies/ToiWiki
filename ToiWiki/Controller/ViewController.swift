//
//  ViewController.swift
//  ToiWiki
//
//  Created by Arpit Lokwani on 7/15/18.
//  Copyright © 2018 EduTree. All rights reserved.
//

import UIKit

class ViewController: BaseViewController,HomeViewDelegate {

    let home = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        home.getHomeView(vc: self)
        home.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Home Delegates 
    func didPressedListButton() -> Void {
        let listVC = StoreyBoard().getListViewController()
        self.push(VC: listVC)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

