//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 4/15/21.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        VStack {
            // Only show video if there is a valid url
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            // TODO: Description
            
            // Show the next lesson button, only if there is a next lesson
            if model.hasNextLesson() {
                Button(action: {
                    model.nextLesson()
                    
                }, label: {
                    Text("Next Lesson")
                })
            }
        }
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
            .environmentObject(ContentModel())
    }
}
