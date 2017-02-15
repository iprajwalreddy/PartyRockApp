//
//  ViewController.swift
//  PartyRockApp
//
//  Created by SaiReddy on 29/01/17.
//  Copyright © 2017 SaiReddy. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = PartyRock(imageURL: "https://yt3.ggpht.com/-411PZt30CZE/AAAAAAAAAAI/AAAAAAAAAAA/qrcsDUDc-Zs/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wF2Ab3TJDYI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        partyRocks.append(p1)
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

