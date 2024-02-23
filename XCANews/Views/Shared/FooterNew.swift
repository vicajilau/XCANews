//
//  FooterNew.swift
//  XCANews
//
//  Created by Victor Carreras on 31/1/24.
//

import SwiftUI

struct FooterNew: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(article.title)
                .font(.headline)
                .foregroundColor(.white)
                .lineLimit(3)
            
            Text(article.descriptionText)
                .font(.subheadline)
                .foregroundColor(.white)
                .lineLimit(2)
            
            HStack {
                Text(article.captionText)
                    .lineLimit(1)
                    .foregroundColor(.white)
                    .font(.caption)
                
                Spacer()
                
                Button {
                    toggleBookmark(for: article)
                } label: {
                    Image(systemName: articleBookmarkVM.isBookmarked(for: article) ? "bookmark.fill" : "bookmark")
                        .foregroundColor(Color.ui.primaryColor)
                }
                .buttonStyle(.bordered)
                
                Button {
                    presentShareSheet(url: article.articleURL)
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color.ui.primaryColor)
                }
                .buttonStyle(.bordered)
            }
        }
        .padding([.horizontal, .bottom, .top])
        .background(Color.ui.baseColor)
    }
    
    private func toggleBookmark(for article: Article) {
        if articleBookmarkVM.isBookmarked(for: article) {
            articleBookmarkVM.removeBookmark(for: article)
        } else {
            articleBookmarkVM.addBookmark(for: article)
        }
    }
}

struct FooterNew_Previews: PreviewProvider {
    @StateObject static var articleBookmarkVM = ArticleBookmarkViewModel.shared
    static var previews: some View {
        NavigationView {
            FooterNew(article: .previewData[0])
        }
        .environmentObject(articleBookmarkVM)
    }
}
