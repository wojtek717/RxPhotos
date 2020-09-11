//
//  LivePhotoRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos

public struct LivePhotoRequestResult {
    public let livePhoto: PHLivePhoto?
    public let info: [AnyHashable: Any]

    internal init(livePhoto: PHLivePhoto?, info: [AnyHashable: Any]?) {
        self.livePhoto = livePhoto
        self.info = info ?? [:]
    }
}
