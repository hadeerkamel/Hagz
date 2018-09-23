//
//  InputTextFeild.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/3/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

@IBDesignable class UnderlineLabel: UIView {

    
    @IBOutlet var view: UIView!
    @IBOutlet weak var underLineView: UIView!
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var SideButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }       
    func loadNib(){
        Bundle.main.loadNibNamed("UnderlineLabel", owner: self, options: nil)
        self.addSubview(self.view)
    }
    func sharedInit() {
        // Common logic goes here
        loadNib()
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
        setLineColor(color: LineColor)
        setLabelTitle(text: LabelTitle)
        setLabelTitleColor(color: LabelTitleColor)
        setButtonImage(image: ButtonImage)
        setSideButtonIshidden(value: ButtonIsHidden)
    }
    
    @IBInspectable var LineColor :UIColor = UIColor.lightGray{
        didSet{
            setLineColor(color: LineColor)
        }
    }
   
    @IBInspectable var LabelTitle :String = ""{
        didSet{
            setLabelTitle(text: LabelTitle)
        }
    }
    @IBInspectable var LabelTitleColor :UIColor = UIColor.lightGray{
        didSet{
            setLabelTitleColor(color: LabelTitleColor)
        }
    }
    @IBInspectable var ButtonImage :UIImage = #imageLiteral(resourceName: "down"){
        didSet{
            setButtonImage(image: ButtonImage)
        }
    }
    @IBInspectable var ButtonIsHidden :Bool = true{
        didSet{
            setSideButtonIshidden(value: ButtonIsHidden)
        }
    }
    func setLineColor(color : UIColor){
        underLineView.backgroundColor = color
    }
    func setLabelTitle(text : String){
        Label.text = text
    }
    func setLabelTitleColor(color : UIColor){
        Label.textColor = color
    }
    func setButtonImage(image : UIImage){
        SideButton.setImage(image, for: .normal)
    }
    func setSideButtonIshidden(value : Bool){
        SideButton.isHidden = value
    }
    
}
