//
//  BaseDTO.swift
//  LibraryDemo
//
//  Created by Luiz SSB on 3/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import Foundation
import EVReflection

class BaseDTO : EVNetworkingObject {
    var objectId: String?
    var updated: Int?
    var created: Int =
        Int(NSDate().timeIntervalSince1970)
    var ___class: String?
    
    override func setValue(
        _ value: Any!,
        forUndefinedKey key: String
    ) {
    }
}
