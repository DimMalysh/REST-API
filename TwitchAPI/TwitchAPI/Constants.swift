//
//  Constants.swift
//  TwitchAPI
//
//  Created by mac on 31.03.18.
//  Copyright © 2018 Dim Malysh. All rights reserved.
//

import Foundation

//Twitch API URL's
let TWITCH_URL_TOP50_GAMES = "https://api.twitch.tv/kraken/games/top?limit=50&client_id=fiv4vbguq22y2pbostyo0g3mm9fpsc"
let TWITCH_URL_STREAMS_BASE = "https://api.twitch.tv/kraken/streams?game="
let TWITCH_URL_STREAMS_CLIENT_ID = "&client_id=fiv4vbguq22y2pbostyo0g3mm9fpsc"

typealias DownloadComplete = () -> ()
