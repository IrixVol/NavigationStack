//
//  StatusView.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

struct StatusView: View {

    let index: Int
    @Binding var path: NavigationPath
    @Binding var selectedIndex: Int?
    
    var model: DataModel {
        .default[index]
    }
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            StatusImageView(statusImageName: model.image, size: .init(width: 300, height: 300))
                .padding(.top, 32)
            
            navigationButtons
            
            Text(model.description)
                .font(.title3)
                .padding(.all , 16)
            
            Spacer()
        }
        .navigationTitle("\("Status".localized) № \(index + 1)")
        .navigationBarBackButton {
            path.removeLast(path.count - 1)
        }
    }
    
    var navigationButtons: some View {
        
        HStack {
            
            Button(action: {
                path.removeLast()
                selectedIndex = index - 1
            }, label: {
                Image(systemName: "arrowshape.backward")
                    .font(.title)
            })
            .disabled(index <= 0)
            
            Spacer()
            
            Button(action: {
                path.removeLast(path.count - 1)
            }, label: {
                Image(systemName: "list.bullet")
                    .font(.title)
                Text("Return to status list".localized)
            })
            
            Spacer()
            
            Button(action: {
                selectedIndex = index + 1
                path.append(StatusView.Path.index(index + 1))
            }, label: {
                Image(systemName: "arrowshape.forward")
                    .font(.title)
            })
            .disabled(index >= DataModel.default.count - 1)
            
        }
        .padding(.all , 32)
    }
}

extension StatusView {
    
    enum Path: Hashable {
        case index(Int)
        
        var value: Int {
            switch self {
            case .index(let value): return value
            }
        }
    }
}

#Preview {
    NavigationView {
        StatusView(index: 0, path: .constant(NavigationPath()), selectedIndex: .constant(4))
            .navigationBarTitleDisplayMode(.inline)
    }
}

