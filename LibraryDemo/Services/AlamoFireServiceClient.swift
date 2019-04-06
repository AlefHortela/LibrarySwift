//
//  AlamofireServiceClient.swift
//  LibraryDemo
//
//  Created by Luiz SSB on 3/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import Foundation
import Alamofire
import EVReflection

class AlamofireServiceClient : ServiceClient {
    func getAuthors(
        withNameLike nameQuery: String,
        callback:
            @escaping ([Author]?, ServiceError?) -> Void
    ) {
        var allowedStatuses = Array<Int>(200..<300)
        allowedStatuses.append(contentsOf: 400..<407)
        
        Alamofire.request(
            "https://api.backendless.com/00F19476-387E-3131-FFD6-EB5F1F72E100/38659E4B-1D33-06C9-FF05-272C81B2D200/data/Author",
            method: .get,
            parameters:
                ["where":"name like '%\(nameQuery)%'"]
        )
            .validate(statusCode: allowedStatuses)
            .responseData { response in
                switch(response.result) {
                case .success(let jsonData):
                    let jsonString = String(
                        data: jsonData, encoding: .utf8
                    )!
                    if jsonString.contains("\"code\"") {
                        let errorResponse =
                            ErrorResponse(json: jsonString)
                        callback(
                            nil,
                            ServiceError(
                                code: .serviceFailed,
                                message: errorResponse.message ?? ""
                            )
                        )
                    } else {
                        let authors = [Author](json: jsonString)
                        callback(authors, nil)
                    }
                case .failure(let error):
                    callback(
                        nil,
                        ServiceError(
                            code: .unknown,
                            message: error.localizedDescription,
                            innerError: error
                        )
                    )
                }
            }
    }
}
