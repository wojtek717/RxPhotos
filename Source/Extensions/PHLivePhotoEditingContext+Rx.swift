//
//  PHLivePhotoEditingContext+Rx.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos
import RxSwift

extension Reactive where Base: PHLivePhotoEditingContext {
    public func saveLivePhoto(to output: PHContentEditingOutput,
                              options: [String: Any]? = nil) -> Single<Bool> {
        return Single.create { [weak base] single in
            base?.saveLivePhoto(to: output, options: options) { result, error in
                if let error = error {
                    single(.error(error))
                } else {
                    single(.success(result))
                }
            }

            return Disposables.create()
        }
    }

    public func prepareLivePhotoForPlayback(withTargetSize targetSize: CGSize,
                                            options: [String: Any]? = nil) -> Single<LivePhotoRequestResult> {
        return Single.create { [weak base] single in
            base?.prepareLivePhotoForPlayback(withTargetSize: targetSize, options: options) { livePhoto, error in
                if let error = error {
                    single(.error(error))
                } else {
                    single(.success(LivePhotoRequestResult(livePhoto: livePhoto, info: [:])))
                }
            }

            return Disposables.create()
        }
    }
}
