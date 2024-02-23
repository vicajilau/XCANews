//
//  View+Extension.swift
//  XCANews
//
//  Created by Victor Carreras on 31/1/24.
//

import Foundation
import SwiftUI

extension View {
    
    func presentShareSheet(url: URL) {
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
            .keyWindow?
            .rootViewController?
            .present(activityVC, animated: true)
    }
    
}
