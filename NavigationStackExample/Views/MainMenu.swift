//
//  MainMenu.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

struct MainMenu: View {

    @State var path = NavigationPath()
    var body: some View {

        NavigationStack(path: $path) {
            
            VStack(spacing: 32) {
                
                Group {
                    
                    NavigationLink(value: Path.info) {
                        Text("Information about App".localized)
                            .font(.title3)
                    }
                    
                    NavigationLink(value: Path.statusList) {
                        Text("Status list".localized)
                            .font(.title3)
                    }
                    
                }
                .padding(.all, 16)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.backgroundSecondary)
                )
            }
            .fixedSize()
            .navigationTitle("Main Screen".localized)
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Path.self) { value in
                switch value {
                case .info: 
                    Text("Study Navigation Stack!!!".localized)
                        .navigationTitle("Info".localized)
                case .statusList:
                    StatusListView(path: $path)
                }
            }
        }
    }
}

#Preview {
    MainMenu()
}

extension MainMenu {
    enum Path {
        case info
        case statusList
    }
}
