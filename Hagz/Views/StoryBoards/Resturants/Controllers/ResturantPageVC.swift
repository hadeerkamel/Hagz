//
//  ResturantPageVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/22/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class ResturantPageVC: UIViewController {
    
    //MARK: - Outlets -

    @IBOutlet weak var customNavigationBar: UINavigationBar!
    //MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()

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
    func uiStyle(){
        customNavigationBar.shadowImage = UIImage()
        customNavigationBar.setBackgroundImage(UIImage(), for: .default)
        
    }
    //MARK: - Actions -
    @IBAction func backButtonClicked(_ sender: Any) {
        Home.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func BookNowButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.BookNowScreen), animated: true)
    }
    
    @IBAction func MenuButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.MenuScreen), animated: true)
    }
    
}
