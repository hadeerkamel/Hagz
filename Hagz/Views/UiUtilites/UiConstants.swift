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
            static let AboutScreen        = "AboutVC"
            static let ChangeLanguage     = "ChangeLanguageVC"
           
            
        }
        class Home {
            static let HomeScreen        = "HomeVC"
            static let SearchResturant   = "SearchWithResturantVC"
            static let GetUserLocation   = "getUserLocationVC"
            static let MapScreen         = "MapVC"
            
        }
        
    }
    class StoryBoards {
        static var SideMenuStory = UIStoryboard(name: "SideMenu", bundle: nil)
        static var HomeStory = UIStoryboard(name: "Home", bundle: nil)

     }
}
