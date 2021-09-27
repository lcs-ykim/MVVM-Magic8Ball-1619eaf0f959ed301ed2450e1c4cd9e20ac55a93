//
//  SwiftUIView.swift
//  MVVM-Magic8Ball
//
//  Created by Yeseo Kim on 2021-09-27.
//

import SwiftUI

struct SwiftUIView: View {
    
    // Make an instance of the view model to store questions and advice
    @ObservedObject var advisor = AdviceViewModel()

    var body: some View {
        
        // Show the list of questions and responses
        List(advisor.sessions.reversed()) { session in
            VStack(alignment: .leading) {
                Text(session.question)
                    .bold()
                Text(session.response)
            }
        }
        .padding()
        .navigationTitle("Magic 8 Ball")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
