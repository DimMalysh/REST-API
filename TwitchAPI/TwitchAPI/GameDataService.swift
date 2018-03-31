//
//  GameDataService.swift
//  TwitchAPI
//
//  Created by mac on 31.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import Foundation

class GameDataService {
    
    static let instance = GameDataService()
    var games = [Game]()
    
    func downloadTopGames(completed: @escaping DownloadComplete) {
        var nameString, imageUrlString: String!
        let url = TWITCH_URL_TOP50_GAMES
        
        request(url).responseJSON { (responce) in
            print(responce)
            
            if let JSON = responce.result.value as? [String : Any] {
                if let topGamesArray = JSON["top"] as? [[String : Any]], topGamesArray.count > 0 {
                    for i in 0..<topGamesArray.count {
                        if let gameDict = topGamesArray[i]["game"] as? [String : Any] {
                            if let gameName = gameDict["name"] as? String {
                                nameString = gameName
                            }
                            
                            if let boxArt = gameDict["box"] as? [String : Any] {
                                if let imageUrl = boxArt["large"] as? String {
                                    imageUrlString = imageUrl
                                }
                            }
                        }
                        
                        let game = Game(name: nameString, imageUrl: imageUrlString)
                        self.games.append(game)
                    }
                }
            }
            completed()
        }
    }
    
}
