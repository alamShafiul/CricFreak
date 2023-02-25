//
//  UpcomingTblCell.swift
//  CricFreak
//
//  Created by Admin on 15/2/23.
//

import UIKit

class UpcomingTblCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var LabelTwo: UILabel!
    
    @IBOutlet weak var LabelThree: UILabel!
    
    @IBOutlet weak var TeamA: UILabel!
    
    @IBOutlet weak var TeamB: UILabel!
    
    @IBOutlet weak var TeamAimg: UIImageView!
    
    @IBOutlet weak var TeamBimg: UIImageView!
    
    var timer = Timer()
    var targetTime: Date?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [weak self] timer in
            guard let self = self, let targetTime = self.targetTime else { return }
            // Calculate the remaining time
            let remainingTime = targetTime.timeIntervalSinceNow
            if remainingTime > 0 {
                // Update the label with the remaining time
                let formatter = DateComponentsFormatter()
                formatter.allowedUnits = [.hour, .minute, .second]
                formatter.unitsStyle = .abbreviated
                self.LabelTwo.text = (formatter.string(from: remainingTime) ?? "-1") + " to go"
            } else {
                // Stop the timer when the target time has passed
                //self.timer.invalidate()
                //self.timer = nil
                self.LabelTwo.text = "Match already started!!"
            }
        })
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
