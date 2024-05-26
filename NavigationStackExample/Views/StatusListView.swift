//
//  StatusListView.swift
//  NavigationStackStartExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

struct StatusListView: View {
    
    @Binding var path: NavigationPath
    @State var selectedIndex: Int?
    
    let models: [DataModel] = DataModel.default
    
    var body: some View {
        
        List {
            Section(header: Text("Navigation Stack learning statuses".localized)
                .font(.headline)
                .padding(.vertical, 16)
            ) {
                
                ForEach(0..<models.count, id: \.self) { index in
                    itemView(models[index], isSelected: selectedIndex == index)
                        .onTapGesture {
                            selectedIndex = index
                            path.append(StatusView.Path.index(index))
                        }
                }
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
        }
        .navigationTitle("Status list".localized)
        .navigationDestination(for: StatusView.Path.self) { value in
            StatusView(index: value.value, path: $path, selectedIndex: $selectedIndex)
        }
    }
    
    func itemView(_ item: DataModel, isSelected: Bool) -> some View {
        
        HStack(alignment: .top, spacing: 16) {
            
            StatusImageView(statusImageName: item.image, size: .init(width: 80, height: 80))
                .padding(.top, 4)
            
            Text(item.description)
                .font(.title3)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 8)
        .background(isSelected ? Color.selected : .clear)
    }
}

#Preview {
    StatusListView(path: .constant(NavigationPath()))
}
