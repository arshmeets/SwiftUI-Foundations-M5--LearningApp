//
//  HomeViewrow.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 3/24/21.
//

import SwiftUI

struct HomeViewrow: View {
    var image: String
    var title: String
    var description: String
    var time: String
    var count: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack {
                
                // Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                Spacer()
                
                // Text
                VStack(alignment: .leading, spacing: 10) {
                    // Headline
                    Text(title)
                        .bold()
                    
                    // Description
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                    // System Icons and more descriptions
                    HStack {
                        
                        // Number of lessons/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(Font.system(size: 10))
                        
                        Spacer()
                        
                        // Time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(Font.system(size: 10))
                    }
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal, 20)
            
        }
    }
}

struct HomeViewrow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewrow(image: "swift", title: "Learn Swift", description: "some description", time: "3 Hours", count: "5 Lessons")
    }
}
