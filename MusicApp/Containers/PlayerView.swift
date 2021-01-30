//
//  PlayerView.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 30.01.2021.
//

import SwiftUI

struct PlayerView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var album: Album
    var song: Song
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            Image(album.image).resizable().edgesIgnoringSafeArea(.all)
            BlurEffect(style: .dark).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                AlbumArt(album: album, isWithText: true)
                Text(song.name).font(.title).fontWeight(.light).foregroundColor(.white)
                Spacer()
                ZStack {
                    Color.white.cornerRadius(20).shadow(radius: 10)
                    
                    HStack {
                        Button(action: self.playPause, label: {
                            Image(systemName: "arrow.left.circle").resizable()
                        }).frame(width: 50, height: 50, alignment: .center).foregroundColor(Color.black.opacity(0.2))
                        
                        Button(action: self.playPause, label: {
                            Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill").resizable()
                        }).frame(width: 70, height: 70, alignment: .center).padding()
                        
                        Button(action: self.playPause, label: {
                            Image(systemName: "arrow.right.circle").resizable()
                        }).frame(width: 50, height: 50, alignment: .center).foregroundColor(Color.black.opacity(0.2))
                    }
                }.edgesIgnoringSafeArea(.bottom).frame(height: 200, alignment: .center)
            }
        }
    }
    
    func playPause() {
        self.isPlaying.toggle()
    }
    
    func next() {
        
    }
    
    func previous() {
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(album: dummyAlbum[0], song: dummyAlbum[0].songs[0])
    }
}
