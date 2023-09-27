import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
            floatingButton
        }
    }
}

#Preview {
    FeedView()
}

extension FeedView {
    private var floatingButton: some View {
        Button {
            showNewTweetView.toggle()
        } label: {
            Image(systemName: "pencil.line")
                .resizable()
                .renderingMode(.template)
                .frame(width: 28, height: 28)
                .padding()
        }
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(Circle())
        .padding()
        .fullScreenCover(isPresented: $showNewTweetView) {
            NewTweetView()
        }
    }
}
