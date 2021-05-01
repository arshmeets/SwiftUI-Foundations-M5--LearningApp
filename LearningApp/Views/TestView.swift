//
//  TestView.swift
//  LearningApp
//
//  Created by Arshmeet Sodhi on 5/1/21.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                // Question number
                
                // Question
                
                // Answers
                
                // Button
            }
            
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
