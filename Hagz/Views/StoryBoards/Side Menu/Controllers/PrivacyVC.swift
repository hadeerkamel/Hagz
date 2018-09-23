//
//  PrivacyVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/3/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class PrivacyVC: UIViewController {
    //MARK: - Outlets -

    @IBOutlet weak var privacyLabel: UILabel!
    //MARK: - Life Cycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiStyle()
    }
    //MARK: - Helpers -
    func init_(){
        //privacyLabel.text = 
    }
    func uiStyle(){
        self.navigationItem.title = "سياسه الخصوصيه"
    }
}
