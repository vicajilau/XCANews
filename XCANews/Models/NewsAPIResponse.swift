//
//  NewsAPIResponse.swift
//  XCANews
//
//  Created by Victor Carreras on 29/1/24.
//

import Foundation

struct NewsAPIResponse: Decodable {
    
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
    
}
