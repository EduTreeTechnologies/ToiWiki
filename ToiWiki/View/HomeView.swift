//
//  HomeView.swift
//  ToiWiki
//
//  Created by Arpit Lokwani on 7/17/18.
//  Copyright © 2018 EduTree. All rights reserved.
//

import UIKit
@objc protocol HomeViewDelegate: class{
    @objc optional func didPressedListButton() -> Void

}

class HomeView: UIView {
    weak var delegate: HomeViewDelegate?

    func getHomeView(vc:UIViewController) -> Void{
     
        let homeView = UIView()
         homeView.frame = CGRect(x:0, y: 0, width: vc.view.frame.size.width, height:vc.view.frame.size.height)
        vc.view.addSubview(homeView)
        
        // List Button
        let listButton = UIButton()
        listButton.frame = CGRect(x:vc.view.frame.size.width/2-50, y: 100, width: 100, height:40)
        homeView.addSubview(listButton)
        listButton.setTitle("List", for: .normal)
        listButton.backgroundColor = UIColor.red
        listButton.addTarget(self, action: #selector(listButtonPressed), for: .touchUpInside)

        
    }
    
     @objc func listButtonPressed() -> Void {
        delegate?.didPressedListButton!()
    }

    

}
