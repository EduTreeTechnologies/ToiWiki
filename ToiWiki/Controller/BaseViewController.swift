//
//  BaseViewController.swift
//  ToiWiki
//
//  Created by Arpit Lokwani on 7/17/18.
//  Copyright © 2018 EduTree. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //pushing to next View controller
    func push(VC:UIViewController) -> Void {
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    //pop to previous view controller
    func popVC() -> Void {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    //pop to root view controller
    func popToRootVC() -> Void {
        self.navigationController?.popToRootViewController(animated: true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
