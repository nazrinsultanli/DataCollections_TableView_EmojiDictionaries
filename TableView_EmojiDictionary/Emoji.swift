//
//  Emoji.swift
//  TableView_EmojiDictionary
//
//  Created by Nazrin Sultanlı on 12.01.25.
//

import Foundation
struct Emoji: Codable{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static var sampleEmojis: [Emoji] {
        return [
             Emoji(symbol: "😀", name: "Grinning Face", description: "A yellow face with a broad, open smile, showing upper teeth.", usage: "Expressing happiness"),
             Emoji(symbol: "😢", name: "Crying Face", description: "A yellow face with an open mouth, shedding a single tear.", usage: "Expressing sadness or empathy"),
             Emoji(symbol: "❤️", name: "Red Heart", description: "A classic red heart symbol.", usage: "Expressing love"),
             Emoji(symbol: "🔥", name: "Fire", description: "A flame, as a flickering, reddish-orange blaze.", usage: "Signifying something is hot, amazing, or trending"),
             Emoji(symbol: "🎉", name: "Party Popper", description: "A party popper, as used for celebrations and parties.", usage: "Celebrating something exciting"),
             Emoji(symbol: "😎", name: "Smiling Face with Sunglasses", description: "A cool face wearing sunglasses.", usage: "Expressing coolness or confidence"),
             Emoji(symbol: "🍕", name: "Pizza Slice", description: "A slice of pepperoni pizza.", usage: "Expressing hunger or love for pizza"),
             Emoji(symbol: "🚀", name: "Rocket", description: "A rocket blasting off into space.", usage: "Signifying rapid progress or success"),
             Emoji(symbol: "💡", name: "Light Bulb", description: "A classic light bulb, often used to represent ideas.", usage: "Signifying a new idea or innovation"),
             Emoji(symbol: "🐶", name: "Dog Face", description: "A friendly, cartoon-style face of a dog.", usage: "Expressing affection for dogs or animals in general"),
             Emoji(symbol: "🌟", name: "Glowing Star", description: "A yellow star with radiating beams of light.", usage: "Representing fame, success, or magic"),
             Emoji(symbol: "💪", name: "Flexed Biceps", description: "An arm flexing to show strength.", usage: "Representing strength, determination, or working out"),
             Emoji(symbol: "📚", name: "Books", description: "A stack of books.", usage: "Representing learning, studying, or knowledge"),
             Emoji(symbol: "🌈", name: "Rainbow", description: "A colorful arc in the sky.", usage: "Representing happiness, diversity, or hope"),
             Emoji(symbol: "✈️", name: "Airplane", description: "A simple airplane in flight.", usage: "Representing travel or vacations"),
             Emoji(symbol: "😴", name: "Sleeping Face", description: "A face with closed eyes and a 'Zzz' to indicate sleep.", usage: "Expressing tiredness or boredom"),
             Emoji(symbol: "🎵", name: "Musical Note", description: "A single musical note.", usage: "Representing music or rhythm"),
             Emoji(symbol: "⚽", name: "Soccer Ball", description: "A classic black-and-white soccer ball.", usage: "Representing sports or soccer"),
             Emoji(symbol: "📸", name: "Camera", description: "A camera with a flash going off.", usage: "Representing photography or capturing moments"),
             Emoji(symbol: "🌍", name: "Globe Showing Europe-Africa", description: "A representation of Earth focused on Europe and Africa.", usage: "Expressing global awareness or travel"),
             Emoji(symbol: "🤔", name: "Thinking Face", description: "A yellow face with a hand on its chin.", usage: "Indicating deep thought or questioning"),
             Emoji(symbol: "🤩", name: "Star-Struck", description: "A face with stars for eyes.", usage: "Expressing amazement or admiration"),
             Emoji(symbol: "🥳", name: "Partying Face", description: "A face wearing a party hat and blowing a party horn.", usage: "Celebrating or having fun"),
             Emoji(symbol: "🧘", name: "Person in Lotus Position", description: "A person sitting in a meditation pose.", usage: "Representing relaxation or mindfulness"),
             Emoji(symbol: "💔", name: "Broken Heart", description: "A red heart split in two.", usage: "Expressing heartbreak or sadness"),
         ]
    }
    
    static var archiveUrl: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveUrl = documentsDirectory.appendingPathComponent("emoji").appendingPathExtension("plist")
        
        return archiveUrl
    }
    
    static func saveToFile(emojis: [Emoji]){
        let encoder = PropertyListEncoder()
        do {
            let encodedEmojis = try encoder.encode(emojis)
            try encodedEmojis.write(to: Emoji.archiveUrl)
        } catch {
            print("save handling error :\(error)")
        }
    }
    
    static func loadFromFile() -> [Emoji]? {
        let decoder = PropertyListDecoder()
        do {
            let retrievedDatas = try Data(contentsOf: Emoji.archiveUrl)
            let decodedEmojis = try decoder.decode([Emoji].self, from: retrievedDatas)
            return decodedEmojis
        } catch {
            print("load error: \(error)")
            return nil
        }
    }
}



//    var emojis: [[Emoji]] = [
//        // Happy Faces Category
//        [
//            Emoji(symbol: "😀", name: "Grinning Face", description: "A yellow face with a broad, open smile, showing upper teeth.", usage: "Expressing happiness"),
//            Emoji(symbol: "😎", name: "Smiling Face with Sunglasses", description: "A cool face wearing sunglasses.", usage: "Expressing coolness or confidence"),
//            Emoji(symbol: "🤩", name: "Star-Struck", description: "A face with stars for eyes.", usage: "Expressing amazement or admiration"),
//            Emoji(symbol: "🥳", name: "Partying Face", description: "A face wearing a party hat and blowing a party horn.", usage: "Celebrating or having fun")
//        ],
//
//        // Sad Faces Category
//        [
//            Emoji(symbol: "😢", name: "Crying Face", description: "A yellow face with an open mouth, shedding a single tear.", usage: "Expressing sadness or empathy"),
//            Emoji(symbol: "💔", name: "Broken Heart", description: "A red heart split in two.", usage: "Expressing heartbreak or sadness"),
//            Emoji(symbol: "😴", name: "Sleeping Face", description: "A face with closed eyes and a 'Zzz' to indicate sleep.", usage: "Expressing tiredness or boredom"),
//            Emoji(symbol: "🤔", name: "Thinking Face", description: "A yellow face with a hand on its chin.", usage: "Indicating deep thought or questioning")
//        ],
//
//        // Objects Category
//        [
//            Emoji(symbol: "🚀", name: "Rocket", description: "A rocket blasting off into space.", usage: "Signifying rapid progress or success"),
//            Emoji(symbol: "📚", name: "Books", description: "A stack of books.", usage: "Representing learning, studying, or knowledge"),
//            Emoji(symbol: "🎵", name: "Musical Note", description: "A single musical note.", usage: "Representing music or rhythm"),
//            Emoji(symbol: "📸", name: "Camera", description: "A camera with a flash going off.", usage: "Representing photography or capturing moments")
//        ],
//
//        // Nature Category
//        [
//            Emoji(symbol: "🌍", name: "Globe Showing Europe-Africa", description: "A representation of Earth focused on Europe and Africa.", usage: "Expressing global awareness or travel"),
//            Emoji(symbol: "🔥", name: "Fire", description: "A flame, as a flickering, reddish-orange blaze.", usage: "Signifying something is hot, amazing, or trending"),
//            Emoji(symbol: "🌈", name: "Rainbow", description: "A colorful arc in the sky.", usage: "Representing happiness, diversity, or hope"),
//            Emoji(symbol: "🌟", name: "Glowing Star", description: "A yellow star with radiating beams of light.", usage: "Representing fame, success, or magic")
//        ]
//    ]
//
