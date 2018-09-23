//
//  ChangeLanguageVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/3/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class ChangeLanguageVC: UIViewController {

    //MARK: - Outlets -
    
    //MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector(self.dissmissScreen(_:))))
    }
    //MARK: - Helpers -
   @objc func dissmissScreen(_ sender: Any){
           self.dismiss(animated: true, completion: nil)
    }
    func changeLanguage(to lang:String){
        //if lang != AppLanguage
         UserDefaults.standard.set([lang], forKey: "AppleLanguages")
        //alert App should close
         self.dissmissScreen(lang)
    }
    //MARK: - Actions -
    
    @IBAction func toArabicButtonClicked(_ sender: Any) {
        changeLanguage(to : "ar" )
    }
    
    @IBAction func toEnglishButtonClicked(_ sender: Any) {
        changeLanguage(to: "en")
    }
}

