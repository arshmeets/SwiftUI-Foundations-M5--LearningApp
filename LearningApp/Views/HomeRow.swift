//
//  HomeRow.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 3/24/21.
//

import SwiftUI

struct HomeRow: View {
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .frame(width: 325, height: 175)
                    
                }
                
            }
            
        }
    }
}

struct HomeRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeRow()
    }
}
