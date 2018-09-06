//
//  InputTextFeild.swift
//  Hagz
//
//  Created by Hadeer Kamel on 9/3/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

@IBDesignable class InputTextFeild: UIView {

    @IBOutlet weak var underLineView: UIView!
    @IBOutlet weak var InputTextField: UITextField!
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
    
    func sharedInit() {
        // Common logic goes here
        setLineColor(color: LineColor)
        setTextPlaceholder(text: TextPlaceholder)
        setTextColor(color: TextColor)
        setButtonImage(image: ButtonImage)
        setSideButtonIshidden(value: ButtonIsHidden)
    }
    
    @IBInspectable var LineColor :UIColor = UIColor.lightGray{
        didSet{
            setLineColor(color: LineColor)
        }
    }
   
    @IBInspectable var TextPlaceholder :String = ""{
        didSet{
            setTextPlaceholder(text: TextPlaceholder)
        }
    }
    @IBInspectable var TextColor :UIColor = UIColor.lightGray{
        didSet{
            setTextColor(color: TextColor)
        }
    }
    @IBInspectable var ButtonImage :UIImage = #imageLiteral(resourceName: "eye"){
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
    func setTextPlaceholder(text : String){
        InputTextField.placeholder = text
    }
    func setTextColor(color : UIColor){
        InputTextField.textColor = color
    }
    func setButtonImage(image : UIImage){
        SideButton.setImage(image, for: .normal)
    }
    func setSideButtonIshidden(value : Bool){
        SideButton.isHidden = value
    }
    
}
