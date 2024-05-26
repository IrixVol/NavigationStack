//
//  DataModel.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

struct DataModel: Hashable {
    var image: String
    var description: String
}

extension DataModel {
    
    static let `default`: [DataModel] = [

        .init(image: "dontwork", description: "dontwork".localized),
        .init(image: "rejection", description: "rejection".localized),
        .init(image: "depression", description: "depression".localized),
        .init(image: "work", description: "work".localized),
        .init(image: "colleagues", description: "colleagues".localized)
    ]
    
}

extension String {
    var localized: String {
        NSLocalizedString(self, comment: self)
    }
}
