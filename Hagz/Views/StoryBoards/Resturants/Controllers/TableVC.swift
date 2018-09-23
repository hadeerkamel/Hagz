//
//  TableVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/23/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class TableVC: UIViewController {

    //MARK: - Outlets -
    
    @IBOutlet weak var tableView: UITableView!
    //MARK: - Properties -
    var tableCellID  = ""
    //MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        init_()
        uiStyle()

    }
    //MARK: - Helpers -
    func init_(){
        tableView.register(UINib(nibName: tableCellID, bundle: nil), forCellReuseIdentifier: tableCellID)
    }
    func uiStyle(){
        
    }

    
}
//MARK: - Table View -
extension TableVC : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableCellID, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

