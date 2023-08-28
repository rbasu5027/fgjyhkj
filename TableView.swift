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
}
struct TableView: View {
    var body: some View {
        let players: [Player] = [
                Player(position: "Quarterback", name: "Patrick Mahomes"),
                Player(position: "Running Back", name: "Nich Chubb"),
                Player(position: "Wide Receiver", name: "Darnell Mooney"),
                Player(position: "Tight End", name: "Travis Kelce"),
                Player(position: "Defensive End", name: "Myles Garrett"),
                Player(position: "Linebacker", name: "Bobby Wagner"),
                Player(position: "Cornerback", name: "Jalen Ramsey"),
                Player(position: "Safety", name: "Tyrann Mathieu"),
                Player(position: "Kicker", name: "Justin Tucker"),
                Player(position: "Defensive Tackle", name: "Chris Jones")
        ]
               
                List(players, id: \.name) { player in
                    HStack{   VStack(alignment: .leading) {
                        Text(player.position)
                            .font(.headline)
                    }
                        Spacer()
                                    Text(player.name)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
    }
    struct TableView_Previews: PreviewProvider {
        static var previews: some View {
            TableView()
        }
    }
}
