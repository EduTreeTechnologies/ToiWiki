//
//  StoreyBoard.swift
//  ToiWiki
//
//  Created by Arpit Lokwani on 7/17/18.
//  Copyright © 2018 EduTree. All rights reserved.
//

import UIKit

class StoreyBoard: NSObject {

    func getStoreyBoard() -> UIStoryboard {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return storyBoard
    }
    
    func getListViewController() -> UIViewController {
        let storyBoard = self.getStoreyBoard()
        let listViewController = storyBoard.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        return listViewController
    }
    
}
