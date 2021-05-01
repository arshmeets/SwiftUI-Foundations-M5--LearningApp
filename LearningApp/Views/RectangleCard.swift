//
//  RectangleCard.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 5/1/21.
//

import SwiftUI

struct RectangleCard: View {
    
    var color = Color.white
    
    var body: some View {
        Rectangle()
            .foregroundColor(.green)
            .cornerRadius(10)
            .shadow(radius:5)
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
