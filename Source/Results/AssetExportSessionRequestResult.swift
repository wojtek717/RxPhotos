//
//  AssetExportSessionRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import AVFoundation

public struct AssetExportSessionRequestResult {
    public let session: AVAssetExportSession?
    public let info: [AnyHashable: Any]

    internal init(session: AVAssetExportSession?, info: [AnyHashable: Any]?) {
        self.session = session
        self.info = info ?? [:]
    }
}
