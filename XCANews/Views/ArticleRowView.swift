//
//  ArticleRowView.swift
//  XCANews
//
//  Created by Victor Carreras on 29/1/24.
//

import SwiftUI

struct ArticleRowView: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    
    let article: Article
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            NetworkImage(url: article.imageURL)
            FooterNew(article: article)
        }
        .cornerRadius(15)
        .padding()
        .shadow(color: .black, radius: 5, x: 0, y: 2)
    }
}

struct ArticleRowView_Previews: PreviewProvider {
    
    @StateObject static var articleBookmarkVM = ArticleBookmarkViewModel.shared

    static var previews: some View {
        NavigationView {
            List {
                ArticleRowView(article: .previewData[0])
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
        .environmentObject(articleBookmarkVM)
    }
}
