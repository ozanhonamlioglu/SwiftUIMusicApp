//
//  ContentView.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 29.01.2021.
//

import SwiftUI

struct ContentView: View {
    var albums = dummyAlbum
    
    @State var currentAlbum: Album?
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    LazyHStack {
                        ForEach(albums, id: \.self, content: { album in
                            AlbumArt(album: album, isWithText: true).onTapGesture {
                                self.currentAlbum = album
                            }
                        })
                    }
                })
                LazyVStack {
                    ForEach((currentAlbum?.songs ?? albums.first?.songs) ?? dummyAlbum[0].songs, id: \.self, content: { song in
                        SongCell(album: currentAlbum ?? dummyAlbum[0], song: song)
                    })
                }
            }.navigationTitle(currentAlbum?.name ?? "Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(albums: dummyAlbum)
            .previewDevice("iPhone 12")
    }
}
