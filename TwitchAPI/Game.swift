//
//  Game.swift
//  TwitchAPI
//
//  Created by mac on 31.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import UIKit

class Game {

    var name: String!
    var imageUrl: String!
    var image: UIImage?
    
    init(name: String, imageUrl: String) {
        self.name = name
        self.imageUrl = imageUrl
    }
 
    func downloadImageOfGame(completed: @escaping DownloadComplete) {
        request(self.imageUrl).responseData { (responce) in
            if let data = responce.result.value {
                if let image = UIImage(data: data) {
                    self.image = image
                }
            }
            
            completed()
        }
    }
    
}
