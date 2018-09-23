//
//  UIViewExtension.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/1/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    func borderRad(Radus:CGFloat,borderWidth:CGFloat,BorderColor:UIColor? = nil)
    {
        layer.borderWidth = borderWidth
        layer.cornerRadius = Radus
        clipsToBounds = true;
        if let BorderColor = BorderColor
        {
            layer.borderColor = BorderColor.cgColor;
        }
        
    }
    
    func setShadow(color: CGColor ,opacity:Float, radius: CGFloat){
        layer.masksToBounds = false
        layer.shadowColor = color
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize.zero
        
        layer.shadowRadius = radius
        
        
    }
    func connectNibUI() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil).instantiate(withOwner: self, options: nil)
        let nibView = nib.first as! UIView
        nibView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nibView)
        
        nibView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        nibView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        nibView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        nibView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        
    }
}
