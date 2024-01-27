//
//  GalleryView.swift
//  Landmarks
//
//  Created by 宮川義之助 on 2024/01/27.
//

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            
            ForEach(allLandmarks) { currentLandmark in
                
                NavigationLink {
                    DetailView(item: currentLandmark)
                } label: {
                    GalleryItemView(item: currentLandmark)
                }
                
            }
            .navigationTitle("Landmarks")
                        
        }
    }
}

#Preview {
    GalleryView()
}
