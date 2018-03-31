//
//  Stream.swift
//  TwitchAPI
//
//  Created by mac on 31.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import UIKit

class Stream {

    var broadcasterName: String!
    var title: String!
    var viewerCount: Double!
    var image: UIImage?
    var imageUrl: String!
    
    init(broadcasterName: String, title: String, viewerCount: Double, imageUrl: String) {
        self.broadcasterName = broadcasterName
        self.title = title
        self.viewerCount = viewerCount
        self.imageUrl = imageUrl
    }
    
    func downloadImageOfStream(completed: @escaping DownloadComplete) {
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
