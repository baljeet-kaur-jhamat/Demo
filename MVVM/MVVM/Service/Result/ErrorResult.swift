//
//  File.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}
