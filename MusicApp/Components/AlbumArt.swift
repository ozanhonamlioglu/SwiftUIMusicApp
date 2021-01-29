//
//  AlbumArt.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 29.01.2021.
//

import SwiftUI

struct AlbumArt: View {
    var album: Album
    var body: some View {
        ZStack(alignment: .bottom, content: {
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 200, alignment: .center)
            ZStack {
                BlurEffect(style: .light)
                Text(album.name).foregroundColor(.white)
            }.frame(height: 60, alignment: .center)
        }).frame(width: 170, height: 200, alignment: .center).clipped().cornerRadius(20).shadow(radius: 10).padding(20)
    }
}

struct AlbumArt_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlbumArt(album: dummyAlbum[0])
                .previewDevice("iPhone 12 mini")
        }
    }
}
