//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by SaiReddy on 14/02/17.
//  Copyright © 2017 SaiReddy. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
    }
}
