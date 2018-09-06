//
//  SideMenuCell.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 7/29/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import UIKit

class SideMenuCell: UITableViewCell {

    class sideMenuItem {
        var icon:UIImage!
        var label:String = ""
        
        init(icon_:UIImage,label_:String) {
            icon = icon_
           
            label = label_
        }
    }
    
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    
    var cellData: sideMenuItem!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func Setup(data:sideMenuItem) {
        cellData = data
        imgIcon.image = data.icon
        itemLabel.text = data.label
    }
}
