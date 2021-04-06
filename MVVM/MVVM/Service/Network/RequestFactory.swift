//
//  RequestFactory.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

final class RequestFactory {
    
    enum Method: String {
        case GET
        case POST
        case PUT
        case DELETE
        case PATCH
    }
    
    static func request(method: Method, url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
}
