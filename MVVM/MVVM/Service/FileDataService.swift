//
//  File.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import Foundation

final class FileDataService : CurrencyServiceProtocol {
    
    static let shared = FileDataService()
    
    func fetchConverter(_ completion: @escaping ((Result<Converter, ErrorResult>) -> Void)) {
        
        // giving a sample json file
        guard let data = FileManager.readJson(forResource: "sample") else {
            completion(Result.failure(ErrorResult.custom(string: "No file or data")))
            return
        }
        
        ParserHelper.parse(data: data, completion: completion)
    }
} 


extension FileManager {
    
    static func readJson(forResource fileName: String ) -> Data? {
        
        let bundle = Bundle(for: FileDataService.self)
        if let path = bundle.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                return data
            } catch {
                // handle error
            }
        }
        
        return nil
    }
}
