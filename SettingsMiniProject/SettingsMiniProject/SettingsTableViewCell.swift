//
//  SettingsTableViewCell.swift
//  SettingsMiniProject
//
//  Created by mac-admin on 4/13/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    var setting: Setting?
   
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func switchButtonTapped(sender: AnyObject) {
   
    
    }
    
    
    func updateWithSetting(setting: Setting) {
       self.setting = setting
        iconImageView.image = setting.image
        settingSwitch.on = setting.isSet
        settingLabel.text = setting.title
        if setting.isSet {
            self.backgroundColor = .yellowColor()
        } else {
            self.backgroundColor = .whiteColor()
        }
    }

}

protocol SettingTableViewCellDelegate {
    func settingValueChanged(cell: SettingsTableViewCell, selected: Bool)
}
