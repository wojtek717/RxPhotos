//
//  ContentEditRequestResult.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos

public struct ContentEditRequestResult {
    public let editingInput: PHContentEditingInput?
    public let info: [AnyHashable: Any]

    internal init(editingInput: PHContentEditingInput?, info: [AnyHashable: Any]?) {
        self.editingInput = editingInput
        self.info = info ?? [:]
    }
}
