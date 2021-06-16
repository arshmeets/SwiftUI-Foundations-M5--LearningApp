//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 4/7/21.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var lesson: Lesson {
        
        // Runs check that the index is within the lesson count of the module. In other words that the index and the module are aligned.
        
        if model.currentModule != nil && index < model.currentModule!.content.lessons.count {
            return model.currentModule!.content.lessons[index]
        }
        else {
            return Lesson(id: 0, title: "", video: "", duration: "", explanation: "")
        }
    }
    var body: some View {
        
        // Lesson Card
        ZStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack(spacing: 30) {
                Text(String(index + 1))
                    .bold()
                VStack(alignment: .leading) {
                    Text(lesson.title)
                        .bold()
                    Text(lesson.duration)
                }
            }
            .padding()
        }    }
}
