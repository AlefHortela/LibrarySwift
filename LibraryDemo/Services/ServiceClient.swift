//
//  ServiceClient.swift
//  LibraryDemo
//
//  Created by fibbauru-15 on 23/03/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import Foundation

protocol ServiceClient{
    func getAuthors(
        withNameLike nameQuery: String,
        callback: @escaping ([Author]?, ServiceError? ) -> Void
    )
}
