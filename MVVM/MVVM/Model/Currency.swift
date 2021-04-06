//
//  Currency.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

enum Currency : String {
    case EUR
    case GBP
    case USD
}

enum CurrencyLocale : String {
    case EUR = "fr_FR"
    case GBP = "en_UK"
}

struct CurrencyRate {
    
    let currencyIso : String
    let rate : Double
}
