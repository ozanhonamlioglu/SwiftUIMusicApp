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
                            AlbumArt(album: album).onTapGesture {
                                self.currentAlbum = album
                            }
                        })
                    }
                })
                LazyVStack {
                    ForEach((currentAlbum?.songs ?? albums.first?.songs) ?? [
                                Song(name: "Song 1", time: "2:36"),
                                Song(name: "Song 2", time: "2:36"),
                                Song(name: "Song 3", time: "2:36"),
                                Song(name: "Song 4", time: "2:36")], id: \.self, content: { song in
                            SongCell(song: song)
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
