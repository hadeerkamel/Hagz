//
//  MenuVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/23/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    //MARK: - Otlets -
    @IBOutlet weak var tableView: UITableView!
    //MARK: - life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()

        init_()
    }
    //MARK: - Helpers -
    func init_(){
         tableView.register(UINib(nibName: "FoodMenuCell", bundle: nil), forCellReuseIdentifier: "FoodMenuCell")
        
    }
    func uiStyle(){
        
    }
    //MARK: - Actions
    @IBAction func ContinueBookingButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.BookNowScreen), animated: true)
    }
    
}
//MARK: - Table View -
extension MenuVC : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodMenuCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
}
}
