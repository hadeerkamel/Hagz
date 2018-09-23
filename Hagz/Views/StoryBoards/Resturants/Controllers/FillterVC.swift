//
//  FillterVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/22/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class FillterVC: UIViewController {
    //MARK: - Outlets -
    
    @IBOutlet weak var customNavigationBar: UINavigationBar!
    
    //MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        init_()
        uiStyle()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    //MARK: - Helpers -
    func init_(){
        
    }
    func uiStyle(){
        customNavigationBar.shadowImage = UIImage()
        customNavigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    //MARK: - Actions -
    @IBAction func backButtonClicked(_ sender: Any) {
        Home.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func filterButtonClicked(_ sender: Any) {
        Home.openResturantsListVC()
    }
    
}
