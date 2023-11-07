//created on  7/11/23

import SwiftUI

struct PostView: View {
    let post: PostModel
    
    var body: some View {
        VStack(spacing: 8) {
            VStack {
                HStack(alignment: .top) {
                    AsyncImage(url: URL(string: "https://picsum.photos/100"))
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    VStack {
                        Text(post.userName)
                        HStack {
                            Text("\(post.hoursAgo)h")
                            Image(systemName: post.privacy == .friends ? "person.2.fill" : "globe.europe.africa.fill")
                        }
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 8) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.gray)
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.gray)
                        })
                    }
                }
                Text(post.description)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
            .padding(.horizontal,12)
            AsyncImage(url: URL(string: "https://picsum.photos/400"), content: { image in
                image
                    .resizable()
                    .scaledToFit()
            }, placeholder: {
                //
            })
            VStack {
                HStack {
                    Image(systemName: "hand.thumbsup.circle.fill")
                        .foregroundStyle(.blue)
                    Text("\(post.likes)")
                    Spacer()
                }
                Divider()
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "hand.thumbsup")
                                .foregroundStyle(.gray)
                            Text("Like")
                        }
                    })
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "message")
                                .foregroundStyle(.gray)
                            Text("Comment")
                        }
                    })
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "paperplane")
                                .foregroundStyle(.gray)
                            Text("Share")
                        }
                    })
                    Spacer()
                }
                .foregroundStyle(.gray)
            }
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    PostView(post: .init(
        userName: "E. Musk",
        hoursAgo: 17,
        privacy: .friends,
        description: "Excellent job team, keep it",
        likes: 20000
    ))
}
