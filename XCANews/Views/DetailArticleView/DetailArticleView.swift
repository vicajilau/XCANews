//
//  DetailArticleView.swift
//  XCANews
//
//  Created by Victor Carreras on 31/1/24.
//

import SwiftUI

struct DetailArticleView: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    @State private var selectedArticle: Article?
    
    let article: Article
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack(alignment: .center, spacing: 0) {
                NetworkImage(url: article.imageURL)
                FooterNew(article: article)
                Text(article.contentText)
                    .padding()
            }
            Button ("See full content in safari 🧭") {
                selectedArticle = article
            }
            .padding()
            .background(Color.ui.primaryColor)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .shadow(radius: 4, x: 0, y: 4)
            .sheet(item: $selectedArticle) {
                SafariView(url: $0.articleURL)
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
        
    }
}

struct DetailArticleView_Previews: PreviewProvider {
    
    @StateObject static var articleBookmarkVM = ArticleBookmarkViewModel.shared
    
    static var previews: some View {
        NavigationView {
            DetailArticleView(article: .previewData[0])
        }
        .environmentObject(articleBookmarkVM)
    }
}
