//
//  View+NavigationBarBackButton.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

/// Left or bak buttons work on the NavigationBaritem
/// You need to sync images for left and back button
private struct NavigationBarBackButtonModifier: ViewModifier {
    
    var action: (() -> Void)?
    
    func body(content: Content) -> some View {
        if let action {
            /// If action set, use left button shown with the action
            content
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            action()
                        }) {
                            Image.navigationBarBackButtonImage
                        }
                    }
                }
        } else {
            /// if action is missed,  back button shown with defautl action dismiss
            content
                .navigationBarBackButtonHidden(false)
        }
    }
}

public extension View {
    
    @ViewBuilder
    func navigationBarBackButton(action: (() -> Void)?) -> some View {
        modifier(NavigationBarBackButtonModifier(action: action))
    }
}
