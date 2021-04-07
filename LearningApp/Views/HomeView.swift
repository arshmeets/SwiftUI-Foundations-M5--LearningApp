//
//  ContentView.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 3/23/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    LazyVStack {
                        
                        ForEach(model.modules) { module in
                            
                            
                            VStack(spacing: 20) {
                                
                                NavigationLink(
                                    destination:
                                    ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        }),
                                    label: {
                                        // Learning Card
                                        HomeViewrow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, time: module.content.time, count: "\(module.content.lessons.count) Lessons")
                                    })
                                
                                
                                // Test Card
                                HomeViewrow(image: module.test.image, title: " \(module.category) Test", description: module.test.description, time: module.test.time, count: "\(module.test.questions.count) Lessons")
                            }
                            
                        }
                    }
                    .accentColor(.black)
                    .padding()
                    
                }
                
            }
            .navigationTitle("Get Started")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
