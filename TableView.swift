//
//  TableView.swift
//  fgjyhkj
//
//  Created by Rahul A. Basu on 8/28/23.
//

import SwiftUI


struct Player {
    let position: String
    let name: String
    let projectedpoints: String
    let color: Color
}
struct TableView: View {
    var body: some View {
        let players: [Player] = [
            Player(position: "Quarterback", name:  "Trevor Lawrence", projectedpoints: "21.0", color: .teal),
                Player(position: "Running Back 1", name: "Rhamondre Stevenson", projectedpoints: "15.0", color: .blue),
                Player(position: "Running Back 2", name: "Breece Hall", projectedpoints: "7.5", color: .green),
                Player(position: "Wide Reciver 1", name: "CeeDee Lamb", projectedpoints: "17.7", color: .blue),
                Player(position: "Wide Reciver 2", name: "Tee Higgins", projectedpoints: "14.6", color: .orange),
                Player(position: "Tight End", name: "Travis Kelce", projectedpoints: "18.8", color: .red),
                Player(position: "Flex Player",name: "Chris Godwin",  projectedpoints: "14.2", color: .red),
                Player(position: "Defense", name: "Bills", projectedpoints: "5.7", color: .blue),
                Player(position: "Kicker", name: "Jason Myers",  projectedpoints: "8.7", color: .blue),
                Player(position: "Bench 1", name: "Terry McLaurin", projectedpoints: "13.1", color: .yellow),
                Player(position: "Bench 2", name: "Dalvin Cook", projectedpoints: "12.0", color: .green),
                Player(position: "Bench 3", name: "Antonio Gibson", projectedpoints: "10.7", color: .yellow),
        ]
               
                List(players, id: \.name) { player in
                    HStack{   VStack(alignment: .leading) {
                        Text(player.position)
                            .font(.subheadline)
                    }
                        Spacer()
                        Text(player.projectedpoints)
                            
                        Spacer()
                        
                                    Text(player.name)
                                        .font(.headline)
                                        .foregroundColor(player.color)
                        
                                }
                            }
    }
    struct TableView_Previews: PreviewProvider {
        static var previews: some View {
            TableView()
        }
    }
}
