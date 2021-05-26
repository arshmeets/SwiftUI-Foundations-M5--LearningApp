//
//  TestResultView.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 5/26/21.
//

import SwiftUI

struct TestResultView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var numCorrect: Int
    var body: some View {
        
        VStack {
            
            Text("Doing Great")
                .font(.title)
            
            Spacer()
            
            Text("You got \(numCorrect) out of \(model.currentModule?.test.questions.count ?? 0 ) questions")
            
            Spacer()
            
            Button {
                
                // Send the user back to the home view
                model.currentTestSelected = nil
                
            } label: {
                ZStack {
                    RectangleCard(color: .green)
                        .frame(height: 48)
                    
                    Text("Complete")
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
                
            }
            Spacer()
        }
    }
}
