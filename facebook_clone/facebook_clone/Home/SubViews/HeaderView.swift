//created on  7/11/23

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.blue)
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.gray)
                Image(systemName: "magnifyingglass.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.gray)
                Image(systemName: "message.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal, 12)
            Divider()
            HStack {
                AsyncImage(url: URL(string: "https://picsum.photos/100"))
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("What's on your mind?")
                    .font(.system(size: 18))
                Spacer()
                Image(systemName: "photo.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.green)
            }
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    HeaderView()
}
