//
//  CurrencyService.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

protocol CurrencyServiceProtocol : class {
    func fetchConverter(_ completion: @escaping ((Result<Converter, ErrorResult>) -> Void))
}

final class CurrencyService : RequestHandler, CurrencyServiceProtocol {
    
    static let shared = CurrencyService()
    
    let endpoint = "https://api.fixer.io/latest?base=GBP"
    var task : URLSessionTask?
    
    func fetchConverter(_ completion: @escaping ((Result<Converter, ErrorResult>) -> Void)) {
        
        // cancel previous request if already in progress
        self.cancelFetchCurrencies()
        
        task = RequestService().loadData(urlString: endpoint, completion: self.networkResult(completion: completion))
    }
    
    func cancelFetchCurrencies() {
        
        if let task = task {
            task.cancel()
        }
        task = nil
    }
}
