//
//  NetworkImage.swift
//  XCANews
//
//  Created by Victor Carreras on 31/1/24.
//

import SwiftUI

struct NetworkImage: View {
    let url: URL?
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                HStack {
                    Spacer()
                    ProgressView()
                    Spacer()
                }
                
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            case .failure:
                HStack {
                    Spacer()
                    Image(systemName: "photo")
                        .imageScale(.large)
                    Spacer()
                }
                
            @unknown default:
                fatalError()
            }
        }
        .frame(minHeight: 200, maxHeight: 300)
        .background(Color.gray.opacity(0.3))
        .clipped()
    }
}

struct NetworkImage_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            NetworkImage(url: Article.previewData[0].imageURL)
        }
    }
}
