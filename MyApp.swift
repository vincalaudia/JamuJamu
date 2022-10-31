import SwiftUI

@main

/*
Hi, Vinca Here...
Before you start, in case you want to navigate through the story with the ability to undo your choice, you can change the settings by :
 1. Go to StoryView.view
 2. Go to line 125 and you'll see the instruction to delete line 125-128.
 3. After you make your first choice on the app another "back" button will show up below the first one. The first button will take you back to menu, while the one below will undo your choice.
 ENJOY!
*/

struct MyApp: App {
    
    var body: some Scene {
        WindowGroup {
            MenuView()
        }
    }
}
