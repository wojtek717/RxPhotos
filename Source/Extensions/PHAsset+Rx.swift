//
//  PHAsset+Rx.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos
import RxSwift

extension Reactive where Base: PHAsset {
    public func requestContentEditingInput(with options: PHContentEditingInputRequestOptions?)
        -> Single<ContentEditRequestResult> {
        return Single.create { [weak base] single in

            let requestId = base?.requestContentEditingInput(
                with: options,
                completionHandler: { input, info in
                    if let error = RxPhotoError(info: info) {
                        single(.error(error))
                    } else {
                        single(.success(ContentEditRequestResult(editingInput: input, info: info)))
                    }
            })

            return Disposables.create {
                requestId.map { base?.cancelContentEditingInputRequest($0) }
            }
        }
    }
}
