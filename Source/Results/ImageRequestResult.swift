//
//  ImageRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import UIKit

public struct ImageRequestResult {
    public let image: UIImage?
    public let info: [AnyHashable: Any]

    internal init(image: UIImage?, info: [AnyHashable: Any]?) {
        self.image = image
        self.info = info ?? [:]
    }
}
