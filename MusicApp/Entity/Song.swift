//
//  Song.swift
//  MusicApp
//
//  Created by ozan honamlioglu on 29.01.2021.
//

import Foundation

struct Song: Hashable {
    var id = UUID()
    var name: String
    var time: String
}
