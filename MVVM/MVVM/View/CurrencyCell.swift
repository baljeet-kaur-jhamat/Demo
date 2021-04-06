//
//  CurrencyCell.swift
//  MVVM
//
//  Created by Baljeet Kaur on 03/04/21.
//  Copyright © 2021 Baljeet Kaur. All rights reserved.
//

import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    var currencyRate : CurrencyRate? {
        didSet {
            
            guard let currencyRate = currencyRate else {
                return
            }
            
            rateLabel?.text = "\(currencyRate.rate)"
            currencyLabel?.text = currencyRate.currencyIso
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
