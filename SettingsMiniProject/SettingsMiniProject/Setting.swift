//
//  Setting.swift
//  SettingsMiniProject
//
//  Created by mac-admin on 4/13/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation
import UIKit

class Setting {
    var image: UIImage?
    var title: String
    var isSet: Bool
    
    init(image: UIImage?, title: String, isSet: Bool) {
        self.image = image
        self.title = title
        self.isSet = isSet
    }
}