//
//  StreamCell.swift
//  TwitchAPI
//
//  Created by mac on 31.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import UIKit

class StreamCell: UITableViewCell {
    
    @IBOutlet weak var streamImageView: UIImageView!
    @IBOutlet weak var broadcasterNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var viewersLabel: UILabel!
    
    func configureCell(_ stream: Stream) {
        broadcasterNameLabel.text = stream.broadcasterName
        titleLabel.text = stream.title
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        viewersLabel.text = "\(numberFormatter.string(from: NSNumber(value: stream.viewerCount))!) viewers"
        
        if stream.image != nil {
            streamImageView.image = stream.image
        }
    }
    
}
