//
//  Result.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
