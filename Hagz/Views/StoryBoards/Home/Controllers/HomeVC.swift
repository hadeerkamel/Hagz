//
//  HomeVC.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/5/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit
var Home :HomeVC!

class HomeVC: UIViewController {
    
    let coverView : UIView! = UIView()
    //MARK: - Outlets -
    @IBOutlet weak var homeNavigationBar: UINavigationBar!
    
    @IBOutlet weak var locationView: UIView!
    
    @IBOutlet weak var allResturantsView: UIView!
    @IBOutlet weak var allResturantsContentView: UIView!
    
    @IBOutlet weak var resturantsAndHotelsView: UIView!
    @IBOutlet weak var resturants_HotelsContentView: UIView!
    
    @IBOutlet weak var desertsView: UIView!
    @IBOutlet weak var desertsContentView: UIView!
    
    @IBOutlet weak var resturantsView: UIView!
    @IBOutlet weak var foodTrucksView: UIView!
    
    @IBOutlet weak var watchAllFoodButton: UIButton!
    
    @IBOutlet weak var location_MapView: UIView!
    @IBOutlet weak var location_MapView_2: UIView!
    
    @IBOutlet weak var locationMapContentView: UIView!
    @IBOutlet weak var locationMap_2_ContentView: UIView!
    
    
    @IBOutlet weak var location_LabelView: UIView!
    @IBOutlet weak var location_LabelView_2: UIView!
    
    @IBOutlet weak var showAllNearPlaces: UIButton!
    
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
    func init_(){
        Home = self
        addViewsGestures()
        addCoverView()
    }
    func uiStyle(){
        homeNavigationBar.shadowImage = UIImage()
        homeNavigationBar.setBackgroundImage(UIImage(), for: .default)
        Home.navigationController?.navigationItem.backBarButtonItem =  UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        Home.navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "back")
        Home.navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "back")
        
    
        setRadiusAndShadows()
        
    }
    func setRadiusAndShadows(){
        locationView.borderRad(Radus: 0, borderWidth: 0.5, BorderColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        locationView.setShadow(color: UIColor.white.cgColor, opacity: 0.3, radius: 1)
        
       // allResturantsContentView.borderRad(Radus: 20, borderWidth: 0)
        allResturantsContentView.setShadow(color: UIColor.red.cgColor, opacity: 0.3, radius: 1)
        
       desertsContentView.setShadow(color: UIColor.red.cgColor, opacity: 0.3, radius: 1)
        resturants_HotelsContentView.setShadow(color: UIColor.red.cgColor, opacity: 0.3, radius: 1)
        
        
        watchAllFoodButton.setShadow(color: UIColor.darkGray.cgColor, opacity: 0.5, radius: 1)
        watchAllFoodButton.borderRad(Radus: 5, borderWidth: 0)
        
        locationMapContentView.setShadow(color: UIColor.red.cgColor, opacity: 0.3, radius: 1)
        locationMap_2_ContentView.setShadow(color: UIColor.red.cgColor, opacity: 0.3, radius: 1)
        
        showAllNearPlaces.setShadow(color: UIColor.black.cgColor, opacity: 0.5, radius: 1)
        showAllNearPlaces.borderRad(Radus: 5, borderWidth: 0)
    }
    func addViewsGestures(){
        
        locationView.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector(self.openGetLocationScreen(_:))))
        coverView.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector(self.openCloseSideMenu(_:))))
    }
    @objc func openCloseSideMenu(_ sender: Any){
        
        coverView.isHidden = !coverView.isHidden
        if self.revealViewController() != nil{
            self.revealViewController().rightRevealToggle(sender)
        }
    }

    func addCoverView(){
        coverView.frame = self.view.frame
        coverView.backgroundColor = UIColor.black
        coverView.layer.opacity = 0.3
        coverView.isHidden = true
        self.view.addSubview(coverView)
    }
    //MARK: - Gestures Handlers -
    @objc func openGetLocationScreen(_ sender: Any){
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.HomeStory.instantiateViewController(withIdentifier: UIConstants.Screens.Home.GetUserLocation), animated: true)
    }
    //MARK: - Actions -
    
    @IBAction func MenuButtonClicked(_ sender: Any) {
        openCloseSideMenu(sender)
    }
    @IBAction func searchButtonClicked(_ sender: Any) {
        Home.navigationController?.pushViewController(UIConstants.StoryBoards.HomeStory.instantiateViewController(withIdentifier: UIConstants.Screens.Home.SearchResturant), animated: true)
    }
    
    @IBAction func showAllFoodButtonClicked(_ sender: Any) {
    }
    @IBAction func showAllNearPlacesButtonClicked(_ sender: Any) {
    }
    //MARK: - gesture Handlers -
}
