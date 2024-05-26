//
//  StatusImageView.swift
//  NavigationStackExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

struct StatusImageView: View {
    
    let statusImageName: String
    let size: CGSize
    var body: some View {
        
        let cornerRadius: CGFloat = size.width > 80 ? 14 : 8
        Image(statusImageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size.width, height: size.height, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(.white, lineWidth: 2)
                .shadow(color: .black, radius: 5)
            )
    }
}

