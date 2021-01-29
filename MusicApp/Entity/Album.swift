//
//  Album.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 29.01.2021.
//

import Foundation

struct Album: Hashable {
    var id = UUID()
    var name: String
    var image: String
    var songs: [Song]
}
