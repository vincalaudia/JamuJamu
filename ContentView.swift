import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            NavigationView {
                StoryView(story: story, pageIndex: 0)
                    .background(Image("Background")
                                .resizable()
                                .edgesIgnoringSafeArea(.all)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                                
                                )
            }
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)

        }
    }
}



