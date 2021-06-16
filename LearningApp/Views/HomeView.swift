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
                                    tag: module.id,
                                    selection: $model.currentContentSelected,
                                    label: {
                                        // Learning Card
                                        HomeViewrow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, time: module.content.time, count: "\(module.content.lessons.count) Lessons")
                                    })
                                
                                NavigationLink(
                                    destination:
                                        TestView()
                                        .onAppear(perform: {
                                            model.beginTest(module.id)
                                        }),
                                    tag: module.id,
                                    selection: $model.currentTestSelected,
                                    label: {
                                        // Test Card
                                        HomeViewrow(image: module.test.image, title: " \(module.category) Test", description: module.test.description, time: module.test.time, count: "\(module.test.questions.count) Lessons")
                                    })
                                
                            }
                            .padding(.bottom, 10)
                            
                        }
                    }
                    .accentColor(.black)
                    .padding()
                    
                }
                
            }
            .navigationTitle("Get Started")
            
            // Sets the current module back to nil so that content view is able to skip over it's if statement & go to the ContentViewRow to run the check that the index falls within the count of the module
            .onChange(of: model.currentContentSelected) { changedValue in
                if changedValue == nil {
                    model.currentModule = nil
                }
            }
            
            // Same thing as currentContentSelected except it's for the currentTestSelected
            .onChange(of: model.currentTestSelected) { changedValue in
                if changedValue == nil {
                    model.currentModule = nil
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
