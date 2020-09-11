//
//  RxPHPhotoLibraryObserver.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos

internal final class RxPHPhotoLibraryObserver: NSObject, PHPhotoLibraryChangeObserver {
    var changeCallback: ((PHChange) -> Void)?

    func photoLibraryDidChange(_ changeInstance: PHChange) {
        changeCallback?(changeInstance)
    }
}
