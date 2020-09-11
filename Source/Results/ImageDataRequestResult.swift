//
//  ImageDataRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import UIKit

public struct ImageDataRequestResult {
    public let data: Data?
    public let UTI: String?
    public let orientation: UIImage.Orientation
    public let info: [AnyHashable: Any]

    internal init(data: Data?, UTI: String?, orientation: UIImage.Orientation, info: [AnyHashable: Any]?) {
        self.data = data
        self.UTI = UTI
        self.orientation = orientation
        self.info = info ?? [:]
    }
}
