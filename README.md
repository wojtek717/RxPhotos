# RxPhotos

This library is a tiny wrapper around some callback-based Photos' framework functions.

## Usage

Request image:
```swift
PHImageManager.default().rx.requestImage(
            for: asset,
            targetSize: CGSize(width: 120, height: 200),
            contentMode: PHImageContentMode.aspectFit,
            options: nil
            ).subscribe(onNext: { image in
                //
            }).disposed(by: disposeBag)
```

Watch PHPhotoLibrary changes:
```swift
PHPhotoLibrary.shared().rx.photoLibraryChange
            .subscribe(onNext: { change in
                //
            }).disposed(by: disposeBag)
```

Request authorization:
```swift
PHPhotoLibrary.rx.requestAuthorization()
            .subscribe(onSuccess: { status in
                //
            }).disposed(by: disposeBag)
```

Perform changes on photo library:
```swift
PHPhotoLibrary.shared().rx.performChanges({ /**/ })
            .subscribe(onSuccess: { result in
                //
            }).disposed(by: disposeBag)
```

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate RxPhotos into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

pod 'RxPhotos'
```

Then, run the following command:

```bash
$ pod install :git => 'https://github.com/wojtek717/RxPhotos', :commit => 'fac8444d2f588dabfff4c2c5b9a31c6f230006f8'
```


## Dependencies
* [RxSwift](https://github.com/ReactiveX/RxSwift) ~> 5.0.3

## Requirements
* iOS 12+
* Swift 5.0+ 

## Author

Anton Romanov
Wojciech Konury


## License

RxPhotos is available under the MIT license. See the LICENSE file for more info.
