//
//  PHLivePhoto+Rx.swift
//  Pazzing - Escape Rooms
//
//  Created by Wojciech Konury on 10/09/2020.
//  Copyright © 2020 Angry Nerds. All rights reserved.
//

import Foundation
import Photos
import RxSwift

extension Reactive where Base: PHLivePhoto {
    public static func request(withResourceFileURLs fileURLs: [URL],
                               placeholderImage image: UIImage?,
                               targetSize: CGSize,
                               contentMode: PHImageContentMode) -> Observable<LivePhotoRequestResult> {
        return Observable.create { observable in

            let requestId = PHLivePhoto.request(
                withResourceFileURLs: fileURLs,
                placeholderImage: image,
                targetSize: targetSize,
                contentMode: contentMode,
                resultHandler: { livePhoto, info in
                    if let error = RxPhotoError(info: info) {
                        observable.onError(error)
                    } else {
                        observable.onNext(LivePhotoRequestResult(livePhoto: livePhoto, info: info))

                        if info[PHLivePhotoInfoIsDegradedKey] == nil {
                            observable.onCompleted()
                        }
                    }
                })

            return Disposables.create {
                PHLivePhoto.cancelRequest(withRequestID: requestId)
            }
        }
    }
}
