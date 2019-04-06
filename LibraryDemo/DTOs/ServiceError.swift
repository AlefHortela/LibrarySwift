//
//  ServiceError.swift
//  LibraryDemo
//
//  Created by Luiz SSB on 3/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import Foundation

class ServiceError : Error {
    let code: ErrorCode
    let message: String
    let innerError: Error?
    
    init(
        code: ErrorCode, message: String,
        innerError: Error? = nil
    ) {
        self.code = code
        self.message = message
        self.innerError = innerError
    }
}
