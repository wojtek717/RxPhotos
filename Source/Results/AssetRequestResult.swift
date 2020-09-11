//
//  AssetRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import AVFoundation

public struct AssetRequestResult {
    public let asset: AVAsset?
    public let audioMix: AVAudioMix?
    public let info: [AnyHashable: Any]

    internal init(asset: AVAsset?, audioMix: AVAudioMix?, info: [AnyHashable: Any]?) {
        self.asset = asset
        self.audioMix = audioMix
        self.info = info ?? [:]
    }
}
