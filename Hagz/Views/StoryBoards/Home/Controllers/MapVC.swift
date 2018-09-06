//
//  MapVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/5/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class MapVC: UIViewController {

    //MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()

        init_()
        uiStyle()
    }

    //MARH: - Helpers -
    func init_(){
        
    }
    func uiStyle(){
        self.navigationItem.title = "تحديد موقعي"
    }
 
}
