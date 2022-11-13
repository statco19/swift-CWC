import SwiftUI

struct ContentView: View {
    @State var label: String = "What's next?"
    @State var deck: [Card] = [Card]()
    @State var cardGenerated: [[Bool]] = [[Bool]](repeating: Array(repeating: false, count: 13), count: 4)
    
    var suits: [String] = ["Spades", "Clubs", "Hearts", "Diamonds"]
    
    var body: some View {
        VStack {
            Spacer()
            Text(label)
                .padding()
                .background(.gray)
            Spacer()
            Button(action:{
                let number:Int = Int.random(in: 0..<13)
                let type:Int = Int.random(in: 0..<4)
                
                if(cardGenerated[type][number]) {
                    label = "Generated duplicate card."
                } else {
                    cardGenerated[type][number] = true
                    var n:String
                    if(number == 0) {n = "Ace"}
                    else if(number == 10) {n = "Jack"}
                    else if(number == 11) {n = "Queen"}
                    else if(number == 12) {n = "King"}
                    else {n = String(number + 1)}
                    
                    deck.append(Card(cardNumber: number, suit: suits[type]))
                    label = "Generated a " + n + " of " + suits[type]
                }
            }) {
                Text("Generate!")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(.red)
            
            Button(action:{
                if(deck.count == 0) {
                    label = "No cards in the deck."
                } else {
                    let index:Int = Int.random(in: 0..<deck.count)
                    let card: Card = deck[index]
                    deck.remove(at: index)
                    
                    let number:Int = card.cardNumber
                    let suit:String = card.suit
                    let type:Int = suits.firstIndex(of: suit)!
                    
                    cardGenerated[type][number] = false
                    var n:String
                    if(number == 0) {n = "Ace"}
                    else if(number == 10) {n = "Jack"}
                    else if(number == 11) {n = "Queen"}
                    else if(number == 12) {n = "King"}
                    else {n = String(number + 1)}
                    
                    label = "Drew a " + n + " of " + suits[type]
                }
            }) {
                Text("Draw!")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(.blue)
            Spacer()
        }
    }
}
