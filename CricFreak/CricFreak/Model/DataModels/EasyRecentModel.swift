//
//  EasyRecentModel.swift
//  CricFreak
//
//  Created by Admin on 15/2/23.
//

import Foundation

struct EasyRecentModel {
    var data: [RecentTableData] = []
}

struct RecentTableData {
    var id: Int = -1
    var leagueID: Int = -1
    var stage: String = "Unknown"
    var round: String = "Unknown"
    var matchDate: String = "YYYY-MM-dd"
    var venue: String = "Unknown"
    var localteamImg: String = ""
    var visitorteamImg: String = ""
    var localteamCode: String = "Team A"
    var visitorteamCode: String = "Team B"
    var localteamName: String = ""
    var visitorteamName: String = ""
    var localteamId: Int = -1
    var visitorteamId: Int = -1
    var localteamRun: String = "-"
    var localteamWicket: String = "-"
    var localteamOver: String = "-"
    var visitorteamRun: String = "-"
    var visitorteamWicket: String = "-"
    var visitorteamOver: String = "-"
    var note: String = "No Result Found"
}