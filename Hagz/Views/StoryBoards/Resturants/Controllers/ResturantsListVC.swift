//
//  ResturantsListVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/21/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class ResturantsListVC: UIViewController {

    //MARK: - Outlets -
    @IBOutlet weak var ResturantsTableView: UITableView!
    
    @IBOutlet weak var customNavigationBar: UINavigationBar!
    //MARK: - Life Cycle -
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
    func init_ (){
        ResturantsTableView.register(UINib(nibName: "ResturantTableViewCell", bundle: nil), forCellReuseIdentifier: "ResturantTableViewCell")
    }
    func uiStyle(){
        customNavigationBar.shadowImage = UIImage()
        customNavigationBar.setBackgroundImage(UIImage(), for: .default)
        
    }
    func openResturantPage(){
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.ResturantPageScreen), animated: true)
    }
    //MARK: - Actions -
    
    @IBAction func backButtonClicked(_ sender: Any) {
        Home.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func mapButtonClicked(_ sender: Any) {
        self.present(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.ResturantsMapScreen), animated: false, completion: nil)
    }
    
    @IBAction func fillterButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.fillterScreen), animated: true)
    }
}

//MARK: - Table View -
extension ResturantsListVC : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ResturantsTableView.dequeueReusableCell(withIdentifier: "ResturantTableViewCell", for: indexPath)as! ResturantTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        openResturantPage()
    }
}
