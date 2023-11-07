//created on  7/11/23

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    let userName: String
    let hoursAgo: Int
    let privacy: Privacy
    let description: String
    let likes: Int
}

enum Privacy {
    case friends
    case ´public
}
