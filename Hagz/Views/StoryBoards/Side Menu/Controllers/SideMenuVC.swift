//
//  SideMenuVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
var  sideMenu : SideMenuVC!

class SideMenuVC: UIViewController {
    
    //MARK: - Outlets -
    @IBOutlet weak var TableVeiw: TableViewAdapter!
    
    
    
    //MARK: - Propreties -
    var sidemenuItems:[SideMenuCell.sideMenuItem] = []
    
    //MARK: - Controller life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
        uiStyle()
        SetupViews()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    //MARK: - Side Menu -
    func SetupViews() {
        
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "language"),  label_:NSLocalizedString("LANGUAGE",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "location_s"),  label_:NSLocalizedString("CHANGE_LOCATION",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "register"),  label_:NSLocalizedString("LOGIN",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "login"),  label_:NSLocalizedString("REGISTER",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "requests"),  label_:NSLocalizedString("ORDERS",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "privacy"),  label_:NSLocalizedString("PRIVACY",comment:"")))
        sidemenuItems.append(SideMenuCell.sideMenuItem(icon_:#imageLiteral(resourceName: "about"),  label_:NSLocalizedString("ABOUT",comment:"")))
        
        
        
        TableVeiw.setup(cell: "SideMenuCell", data: sidemenuItems, cell_Height: 44, AL_Height: nil) { (cell, index) in
            self.SideMenuCellsSetup(cell: cell as! SideMenuCell, index: index)
        }
        let indexPath = IndexPath(row: 0, section: 0)
        TableVeiw.selectRow(at: indexPath, animated: true, scrollPosition: .bottom)
        
    }
    
    func SideMenuCellsSetup(cell:SideMenuCell, index:IndexPath) {
        let item = sidemenuItems[index.row]
        cell.Setup(data: item)
        
        
    }
    
    //MARK : Helpers
    func  initialization (){
        sideMenu = self
        
        // sideMenuBG_SafeArea_Trailing.constant = (  self.revealViewController().rearViewRevealWidth)
    }
    func uiStyle(){
        // logoWhiteView.borderRad(Radus: 5, borderWidth: 0)
        navigationItem.backBarButtonItem =  UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
    func handleMenuSelection(row:Int){
        switch row{
        case 0 :
            self.present(UIConstants.StoryBoards.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.ChangeLanguage), animated: true, completion: nil)
            break
        case 1:
            Home.navigationController?.pushViewController(UIConstants.StoryBoards.HomeStory.instantiateViewController(withIdentifier: UIConstants.Screens.Home.GetUserLocation), animated: true)
            break
        case 2:
               Home.navigationController?.pushViewController(UIConstants.StoryBoards.LoginStory.instantiateViewController(withIdentifier: UIConstants.Screens.Login.LoginScreen), animated: true)
            
            break
        case 3:
            Home.navigationController?.pushViewController(UIConstants.StoryBoards.LoginStory.instantiateViewController(withIdentifier: UIConstants.Screens.Login.RegisterScreen), animated: true)
            break
        case 4:
            let tableVC = UIConstants.StoryBoards.Resturants.instantiateViewController(withIdentifier: UIConstants.Screens.Resturants.TableScreen) as! TableVC
            tableVC.tableCellID = "OrderCell"
            Home.navigationController?.pushViewController(tableVC, animated: true)
            
            break
        case 5:
            Home.navigationController?.pushViewController(UIConstants.StoryBoards.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.PrivacyScreen), animated: true)
            break
        case 6:
            Home.navigationController?.pushViewController(UIConstants.StoryBoards.SideMenuStory.instantiateViewController(withIdentifier: UIConstants.Screens.SideMenu.AboutScreen), animated: true)
            break
            
        default:
            break
        
            
            
        }
        if row != 0{
            toggleSWRevealViewController()
        }
    }
    
    
    
    
}

