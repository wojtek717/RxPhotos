//
//  PlayerItemRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import AVFoundation

public struct PlayerItemRequestResult {
    public let playerItem: AVPlayerItem?
    public let info: [AnyHashable: Any]

    internal init(playerItem: AVPlayerItem?, info: [AnyHashable: Any]?) {
        self.playerItem = playerItem
        self.info = info ?? [:]
    }
}
