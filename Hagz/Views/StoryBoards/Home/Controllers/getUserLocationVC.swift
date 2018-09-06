//
//  getUserLocationVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/5/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class getUserLocationVC: UIViewController {
    //MARK:- Outlets -
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchNavigationBar: UINavigationBar!
    @IBOutlet weak var getLocationButton: UIButton!
    @IBOutlet weak var previousSearchsTableView: UITableView!
    
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
        getLocationButton.borderRad(Radus: 3, borderWidth: 0)
        getLocationButton.setShadow(color:UIColor.red.cgColor, opacity: 0.3, radius: 3)
        navigationItem.backBarButtonItem =  UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        
    }
    //MARK: - Actions -
    @IBAction func backButtonClicked(_ sender: Any) {
        Home.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func getUserLocationButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.HomeStory.instantiateViewController(withIdentifier: UIConstants.Screens.Home.MapScreen), animated: true)
    }
    


}
//MARK: - TableView extension -
extension getUserLocationVC: UITableViewDelegate ,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
