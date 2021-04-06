//
//  CurrencyServiceTests.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import XCTest
@testable import MVVM

class CurrencyServiceTests: XCTestCase {
    
    func testCancelRequest() {
        
        // giving a "previous" session
        CurrencyService.shared.fetchConverter { (_) in
            // ignore call
        }
        
        // Expected to task nil after cancel
        CurrencyService.shared.cancelFetchCurrencies()
        XCTAssertNil(CurrencyService.shared.task, "Expected task nil")
    }
}
