//
//  SongCell.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 29.01.2021.
//

import SwiftUI

struct SongCell: View {
    var album: Album
    var song: Song
    
    var body: some View {
        NavigationLink(
            destination: PlayerView(album: album, song: song),
            label: {
                HStack {
                    ZStack {
                        Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.blue)
                        Circle().frame(width: 20, height: 20, alignment: .center).foregroundColor(.white)
                    }
                    Text(song.name).bold()
                    Spacer()
                    Text(song.time)
                }.padding(20)
            }).buttonStyle(PlainButtonStyle())
    }
}

struct SongCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SongCell(album: dummyAlbum[0], song: dummyAlbum[0].songs[0])
                .previewDevice("iPhone 12 mini")
        }
    }
}
