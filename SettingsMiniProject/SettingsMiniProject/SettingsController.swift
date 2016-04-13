//
//  SettingsController.swift
//  SettingsMiniProject
//
//  Created by mac-admin on 4/13/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation
import UIKit

class SettingsController {
    
    static let sharedController = SettingsController()
    
    var mySetting: [Setting]
    
    init() {
        let music = Setting(image: UIImage(named: "music"), title: "Music", isSet: false)
        let apps = Setting(image: UIImage(named: "apps"), title: "Apps", isSet: true)
        let books = Setting(image: UIImage(named: "books"), title: "Books", isSet: true)
        let updates = Setting(image: UIImage(named: "apps"), title: "Updates", isSet: true)
        self.mySetting = [music, apps, books, updates]
    }
    
    func updateSettingsSelection(setting: Setting, seletced: Bool) {
        
    }

    
}