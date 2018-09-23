//
//  UiConstants.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/5/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation

class UIConstants {
    class Screens {
        class SideMenu {
            
            static let ChangeLanguage         = "ChangeLanguageVC"
            static let PrivacyScreen          = "PrivacyVC"
            static let AboutScreen            = "AboutVC"
           
            
        }
        class Home {
            static let HomeScreen              = "HomeVC"
            static let SearchResturant         = "SearchWithResturantVC"
            static let GetUserLocation         = "getUserLocationVC"
            static let MapScreen               = "MapVC"
            
        }
        class Login {
            static let LoginScreen              = "LoginVC"
            static let RegisterScreen           = "RegisterVC"
            static let ForgetPassScreen         = "ForgetPasswordVC"
        }
        class Resturants {
            static let ResturantsListScreen     = "ResturantsListVC"
            static let ResturantsMapScreen      = "resturantsMapVC"
            static let fillterScreen            = "FillterVC"
            static let ResturantPageScreen      = "ResturantPageVC"
            static let BookNowScreen            = "BookNowVC"
            static let MenuScreen               = "MenuVC"
            static let TableScreen              = "TableVC"
        }
        
    }
    class StoryBoards {
        static let SideMenuStory   = UIStoryboard(name: "SideMenu", bundle: nil)
        static let HomeStory       = UIStoryboard(name: "Home", bundle: nil)
        static let LoginStory      = UIStoryboard(name: "Login", bundle: nil)
        static let Resturants      = UIStoryboard(name: "Resturants", bundle: nil)
        

     }
}
