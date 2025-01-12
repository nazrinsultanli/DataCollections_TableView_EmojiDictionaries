//
//  EmojiTableViewController.swift
//  TableView_EmojiDictionary
//
//  Created by Nazrin Sultanlı on 12.01.25.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    
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
    
    var emojis: [Emoji] = [
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

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
        // cellLayoutMarginsFollowReadableWidth = true // readable margin
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
  
    // MARK: - Table view data source
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0:
//            return "Happy Faces"
//        case 1:
//            return "Sad Faces"
//        case 2:
//            return "Objects"
//        case 3:
//            return "Nature"
//        default:
//            return nil
//        }
//    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return emojis.count
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return emojis[section].count
        return emojis.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        
//        let emoji = emojis[indexPath.section][indexPath.row]
////        var content = cell.defaultContentConfiguration()
////        content.text = "\(emoji.symbol) - \(emoji.name)"
////        content.secondaryText = emoji.description
////        cell.contentConfiguration = content
        
        let emoji = emojis[indexPath.row]
        cell.update(with: emoji)
        cell.showsReorderControl = true
        
        
        return cell
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        let emoji = emojis[indexPath.section][indexPath.row]
////        print("\(emoji.symbol) \(indexPath)")
//        
//        
//    }
//    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView,     editingStyleForRowAt indexPath: IndexPath) ->     UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    // Override to support rearranging the table view.
    //    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    //        let movedEmoji = emojis.remove(at: fromIndexPath.row)
    //        emojis.insert(movedEmoji, at: to.row)
    //
    //    }
    //
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    @IBSegueAction func addEditEmoji(_ coder: NSCoder, sender: Any?) -> AddEditEmojiTableViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let emojiToEdit = emojis[indexPath.row]
            return AddEditEmojiTableViewController(coder: coder, emoji: emojiToEdit)
        } else {
            return AddEditEmojiTableViewController(coder: coder, emoji: nil)
        }
    }
    
    @IBAction func unwindToEmojiTableView(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as?             AddEditEmojiTableViewController,
              let emoji = sourceViewController.emoji else { return }
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            emojis[selectedIndexPath.row] = emoji
            tableView.reloadRows(at: [selectedIndexPath], with: .none)    }
        else {
            let newIndexPath = IndexPath(row: emojis.count, section: 0)
            emojis.append(emoji)
            tableView.insertRows(at: [newIndexPath], with: .automatic)    }
    }

}
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
  
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


