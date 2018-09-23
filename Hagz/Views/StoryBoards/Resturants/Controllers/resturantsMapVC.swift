//
//  resturantsMapVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/22/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class resturantsMapVC: UIViewController {
    //MARK: - Outlets -
    
    @IBOutlet weak var customNavigationBar: UINavigationBar!
    
    //MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        init_()
        uiStyle()
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
         self.dismiss(animated: false, completion: nil)
       Home.navigationController?.popViewController(animated: true)
       
    }
    @IBAction func mapButtonClicked(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func filterButtonClicked(_ sender: Any) {
       
         self.dismiss(animated: false, completion: nil)
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.fillterScreen), animated: true)
    }
    
}
