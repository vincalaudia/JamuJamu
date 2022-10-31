//
//  File.swift
//  WWDC22
//
//  Created by Jovinca Claudia on 17/04/22.
//

import Foundation
import SwiftUI

struct Story {
    
    let pages: [StoryPage]

    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let mbokImage : Image
    let budiImage : Image
    let text: String
    let who : String
    let choices: [Choice]
    
    init(_ who:String, text: String, choices: [Choice], mbokImage : Image, budiImage : Image) {
        self.who = who
        self.text = text
        self.choices = choices
        self.mbokImage = mbokImage
        self.budiImage = budiImage
    }
}

struct Choice {
    let text: String
    let destination: Int
}
