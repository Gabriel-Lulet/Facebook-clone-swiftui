//created on  7/11/23

import SwiftUI

struct StoriesView: View {
    
    let stories: [StoryModel] = [
        .init(userName: "Steve Jobs"),
        .init(userName: "Uncle Bob"),
        .init(userName: "Mark Z."),
        .init(userName: "Midu dev")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(content: {
                ForEach(stories) { story in
                    StoryView(story: story)
                }
            })
            .padding(.leading, 12)
        }
        .frame(maxHeight: 200)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    StoriesView()
}
