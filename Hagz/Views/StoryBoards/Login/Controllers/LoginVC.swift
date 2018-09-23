//
//  LoginVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/3/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextFeild: InputTextFeild!
    
    @IBOutlet weak var passwordTextFeild: InputTextFeild!
    //MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
     //   loadNib()
       // emailTextFeild.loadViewFromXibFile()
        //passwordTextFeild.loadViewFromXibFile()
    }

    //MARK: - Helpers -
    func loadNib(){
        let bundle = Bundle(for: InputTextFeild.self)
        bundle.loadNibNamed("InputTextFeild", owner: self, options: nil)
    }
    //MARK: - Actions -
    
    @IBAction func ForgetPasssButtonDidClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.LoginStory.instantiateViewController(withIdentifier: UIConstants.Screens.Login.ForgetPassScreen), animated: true)
    }
    
    @IBAction func RegisterbuttonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.LoginStory.instantiateViewController(withIdentifier: UIConstants.Screens.Login.RegisterScreen), animated: true)
    }
}
