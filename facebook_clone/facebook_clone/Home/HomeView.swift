//created on  7/11/23

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                SectionDividerView()
                StoriesView()
                SectionDividerView()
                PostsView()
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
