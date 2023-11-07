//created on  7/11/23

import SwiftUI

struct StoryView: View {
    
    let story: StoryModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                AsyncImage(url: URL(string: "https://picsum.photos/100"))
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(story.userName)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 4)
            .padding(.vertical, 8)
        }
        .frame(width: 100, height: 180)
        .background(
            AsyncImage(url: URL(string: "https://picsum.photos/200"), content: { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }, placeholder: {
                //
            })
        )
    }
}

#Preview {
    StoryView(story: .init(userName: "User Name"))
}
