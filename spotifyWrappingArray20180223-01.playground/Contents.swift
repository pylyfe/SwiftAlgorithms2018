//: Playground - noun: a place where people can play

import UIKit

// Initial: 
// Tracks: A, B, C, D, E
// Selected Track: D
// Playlist Order: D, E, A, B, C

let tracks = ["a", "b", "c", "d", "e"]

func spotifyWrapperWithForLoop(array: [String], selectedTrack: String) -> [String] {
    
    var playlist = [String]()
    var priorTracks = [String]()
    
    for track in array {
        if track == selectedTrack || playlist.count > 0 {
            playlist.append(track)
        } else {
            priorTracks.append(track)
        }
    }
    return playlist + priorTracks
}

print(spotifyWrapperWithForLoop(array: tracks, selectedTrack: "d"))

func spotifyWrapperWithClosure(array: [String], selectedTrack: String) {
    
    let index = array.index(where: {return $0 == selectedTrack})
    
    let prefixArray = array.prefix(upTo: index!)
    let suffixArray = array.suffix(from: index!)
    
    print(suffixArray + prefixArray)
    
}

spotifyWrapperWithClosure(array: tracks, selectedTrack: "d")




