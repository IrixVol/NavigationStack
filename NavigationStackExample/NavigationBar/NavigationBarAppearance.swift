//
//  NavigationBarAppearance.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import UIKit

func setupNavigationBarAppearance() {
    
    // Appearance of NavigationBar colors
    let appearance = UINavigationBarAppearance()
    appearance.shadowImage = UIImage()
    appearance.backgroundImage = UIImage()
    appearance.backgroundColor = .background
    appearance.shadowColor = .clear
    
    // Appearance of NavigationBar text
    let titleFont = UIFont.systemFont(ofSize: 20)
    appearance.titleTextAttributes = [.foregroundColor: UIColor.text, .font: titleFont]
    appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.text, .font: titleFont]
    
    // Appearance of back button
    appearance.setBackIndicatorImage(.navigationBarBackButtonImage, transitionMaskImage: .navigationBarBackButtonImage)
    
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().compactAppearance = appearance
}

extension UINavigationController {
    
    override open func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        //topViewController?.navigationItem.backButtonTitle = ""
        navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
}

