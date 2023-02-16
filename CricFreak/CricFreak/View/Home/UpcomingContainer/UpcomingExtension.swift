//
//  UpcomingExtension.swift
//  CricFreak
//
//  Created by Admin on 15/2/23.
//

import Foundation
import UIKit

extension UpcomingContainerVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingData?.data.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.upcomingNib, for: indexPath) as! UpcomingTblCell
        
        cell.stackView.layer.cornerRadius = 10
        cell.TeamAimg.layer.cornerRadius = 25
        cell.TeamBimg.layer.cornerRadius = 25
        
//        cell.LabelOne.text = "New Zealand tour of India"
//        cell.LabelTwo.text = "Starts at 2023-03-20"
//        cell.LabelThree.text = "Delhi Stadium"
//        cell.TeamA.text = "Argentina"
//        cell.TeamB.text = "Brazil"
        
        cell.LabelOne.text = upcomingData.data[indexPath.row].stage
        cell.LabelTwo.text = upcomingData.data[indexPath.row].matchDate
        cell.TeamA.text = upcomingData.data[indexPath.row].localteamCode
        cell.TeamB.text = upcomingData.data[indexPath.row].visitorteamCode
        
//        if(upcomingData.data[indexPath.row].leagueID == 3) {
//            var x = RecentContainerViewModel.shared.countryFlagImg[recentData.data[indexPath.row].localteamName]
//            var y = recentContainerViewModel.countryFlagImg[recentData.data[indexPath.row].visitorteamName]
//            if(upcomingData.data[indexPath.row].localteamName == "Ireland") {
//                x = recentContainerViewModel.countryFlagImg["Republic of Ireland"]
//            }
//            if(upcomingData.data[indexPath.row].visitorteamName == "Ireland") {
//                y = recentContainerViewModel.countryFlagImg["Republic of Ireland"]
//            }
//            cell.TeamAimg.sd_setImage(with: URL(string: x ?? ""))
//            cell.TeamBimg.sd_setImage(with: URL(string: y ?? ""))
//        }
//        else {
//            cell.TeamAimg.sd_setImage(with: URL(string: upcomingData.data[indexPath.row].localteamImg))
//            cell.TeamBimg.sd_setImage(with: URL(string: upcomingData.data[indexPath.row].visitorteamImg))
//        }
        
        cell.TeamAimg.sd_setImage(with: URL(string: upcomingData.data[indexPath.row].localteamImg))
        cell.TeamBimg.sd_setImage(with: URL(string: upcomingData.data[indexPath.row].visitorteamImg))
        
        cell.LabelThree.text = upcomingData.data[indexPath.row].venue
        
        
        return cell
    }
}