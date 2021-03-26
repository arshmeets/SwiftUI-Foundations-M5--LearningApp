//
//  ContentView.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 3/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                if model.currentModule != nil {
                    ForEach(model.currentModule!.content.lessons) { lesson in
                        // Lesson Card
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(height: 66)
                        }
                        
                    }

                }
                                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
