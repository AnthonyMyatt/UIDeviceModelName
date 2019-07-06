## Installation
Requires Swift 4/5 and Xcode 10.x

### Swift Package Manager
Add the project as a dependency to your Package.swift
```swift
// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "uidevicemodelname-test",
    products: [
        .executable(name: "uidevicemodelname-test", targets: ["YourTargetName"])
    ],
    dependencies: [
        .package(url: "http://github.com/anthonymyatt/uidevicemodelname", .upToNextMinor(from: "1.1.3"))
    ],
    targets: [
        .target(name: "YourTargetName", dependencies: ["UIDeviceModelName"], path: "./Path/To/Your/Sources")
    ]
)
```

Then import `import UIDeviceModelName`.

### Cocoapods
Create `Podfile` and add `pod 'UIDeviceModelName'`:

```ruby
use_frameworks!
target 'YourApp' do
    pod 'UIDeviceModelName', '~> 1.1.3'
end
```

Install pods:

```
$ pod install
```

Import the module:
```swift
import UIDeviceModelName
```

## Usage

```
import UIDeviceModelName

print(UIDevice.current.modelName) // ex) iPhone 8 , iPhone 8 Plus ...
```

## Supported devices

- iPhone 3GS
- iPhone 4 / 4S
- iPhone 5 / 5s / 5c
- iPhone 6 / 6 Plus / 6s / 6 Plus
- iPhone 7 / 7 Plus
- iPhone SE
- iPhone 8 / 8 Plus
- iPhone X
- iPhone XS / XS Max
- iPhone XR
- iPad 1 / 2 / 3 / 4 / 5 / 6
- iPad Air / Air2
- iPad Pro 1 (12.9 / 10.5 / 9.7-inch)
- iPad Pro 2 / 3 (12.9-inch)
- iPad Pro 3 (11-inch)
- iPad mini /  mini 2 / mini 3 / mini 4
- iPod touch / 2G / 3G / 4G / 5G / 6G
- Apple TV 4
- Apple TV 4K
- Apple Watch 0 / 1 / 2 / 3 (38 / 42mm)
- Apple Watch 4 (40 / 44mm)

## License

UIDeviceModelName is available under the MIT license. See the LICENSE file for more info.
