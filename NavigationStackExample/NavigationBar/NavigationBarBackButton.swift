//
//  NavigationBarBackButton.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

extension Image {
    
    static var navigationBarBackButtonImage: some View = Image(systemName: "arrow.backward")
        .font(.system(size: 17, weight: .bold))
}

extension UIImage {
    
    static var navigationBarBackButtonImage = UIImage(
        systemName: "arrow.backward",
        withConfiguration: UIImage.SymbolConfiguration(font: .systemFont(ofSize: 17, weight: .bold))
    )?.withAlignmentRectInsets(.init(top: 0, left: -8, bottom: 0, right: 0))
}
