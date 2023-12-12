//
//  DetailView.swift
//  HelloWorldApp
//
//  Created by Max Kiselyov on 12/12/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
