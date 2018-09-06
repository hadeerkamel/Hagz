//
//  SearchWithResturantVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/5/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class SearchWithResturantVC: UIViewController {
    //MARK: - Outlets -
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchNavigationBar: UINavigationBar!
    
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
        searchNavigationBar.shadowImage = UIImage()
        searchNavigationBar.setBackgroundImage(UIImage(), for: .default)
        searchBar.setImage(#imageLiteral(resourceName: "search_red"), for: UISearchBarIcon.search, state: .normal)
        searchBar.backgroundImage = UIImage()
    }
    //MARK: - Actions -
    @IBAction func backButtonClicked(_ sender: Any) {
        Home.navigationController?.popViewController(animated: true)
    }
    
   

}
