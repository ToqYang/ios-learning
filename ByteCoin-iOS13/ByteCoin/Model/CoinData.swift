//
//  CoinData.swift
//  ByteCoin
//
//  Created by Santiago Toquica Yanguas on 14/12/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct CoinData: Decodable {
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}
