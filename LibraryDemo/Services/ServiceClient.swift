//
//  ServiceClient.swift
//  LibraryDemo
//
//  Created by Luiz SSB on 3/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import Foundation

protocol ServiceClient {
    func getAuthors(
        withNameLike nameQuery: String,
        callback:
            @escaping ([Author]?, ServiceError?) -> Void
    )
}
