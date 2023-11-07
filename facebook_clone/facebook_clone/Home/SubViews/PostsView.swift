//created on  7/11/23

import SwiftUI

struct PostsView: View {
    let posts: [PostModel] = [
        .init(
            userName: "E. Musk",
            hoursAgo: 17,
            privacy: .friends,
            description: "Excellent job team, keep it",
            likes: 20000
        ),
        .init(
            userName: "N. Tesla",
            hoursAgo: 4,
            privacy: .´public,
            description: "This actually shocked me",
            likes: 347
        ),
        .init(
            userName: "H. Simpsons",
            hoursAgo: 4,
            privacy: .friends,
            description: "Ouh",
            likes: 100
        )
    ]
    
    var body: some View {
        LazyVStack {
            ForEach(posts) { post in
                PostView(post: post)
                SectionDividerView()
            }
        }
    }
}

#Preview {
    PostsView()
}
