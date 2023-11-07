//created on  7/11/23

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView()
            SectionDividerView()
            StoriesView()
            SectionDividerView()
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
