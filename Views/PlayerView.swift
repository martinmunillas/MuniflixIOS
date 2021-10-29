//
//  PlayerView.swift
//  Muniflix
//
//  Created by Martin Munilla on 28-10-21.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    var src: String
    
    init(_ src: String) {
        self.src = src
    }
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: src)!)).frame(width: 400, height: 225, alignment: .center)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
    }
}
