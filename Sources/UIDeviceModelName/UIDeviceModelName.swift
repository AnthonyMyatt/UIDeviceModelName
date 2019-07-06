//
//  The MIT License (MIT)
//
//  Copyright (c) 2017 CrossBridge(Katsuya Kato)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

private let devices =
    [
        // iPhone
        "iPhone1,2" : "iPhone 3",
        
        "iPhone2,1" : "iPhone 3GS",
        
        "iPhone3,1" : "iPhone 4",
        "iPhone3,2" : "iPhone 4",
        "iPhone3,3" : "iPhone 4",
        
        "iPhone4,1" : "iPhone 4S",
        
        "iPhone5,1" : "iPhone 5",
        "iPhone5,2" : "iPhone 5",
        "iPhone5,3" : "iPhone 5c",
        "iPhone5,4" : "iPhone 5c",
        
        "iPhone6,1" : "iPhone 5s",
        "iPhone6,2" : "iPhone 5s",
        
        "iPhone7,2" : "iPhone 6",
        "iPhone7,1" : "iPhone 6 Plus",
        
        "iPhone8,1" : "iPhone 6S",
        "iPhone8,2" : "iPhone 6S Plus",
        "iPhone8,4" : "iPhone SE",
        
        "iPhone9,1" : "iPhone 7",
        "iPhone9,3" : "iPhone 7",
        "iPhone9,2" : "iPhone 7 Plus",
        "iPhone9,4" : "iPhone 7 Plus",
        
        "iPhone10,1" : "iPhone 8",
        "iPhone10,4" : "iPhone 8",
        "iPhone10,2" : "iPhone 8 Plus",
        "iPhone10,5" : "iPhone 8 Plus",
        "iPhone10,3" : "iPhone X",
        "iPhone10,6" : "iPhone X",
        
        "iPhone11,2" : "iPhone XS",
        "iPhone11,4" : "iPhone XS Max",
        "iPhone11,6" : "iPhone XS Max",
        "iPhone11,8" : "iPhone XR",
        
        // iPad
        "iPad1,1"  : "iPad 1",
        
        "iPad2,1"  : "iPad 2",
        "iPad2,2"  : "iPad 2",
        "iPad2,3"  : "iPad 2",
        "iPad2,4"  : "iPad 2",
        "iPad2,5"  : "iPad Mini",
        "iPad2,6"  : "iPad Mini",
        "iPad2,7"  : "iPad Mini",
        
        "iPad3,1"  : "iPad 3",
        "iPad3,2"  : "iPad 3",
        "iPad3,3"  : "iPad 3",
        "iPad3,4"  : "iPad 4",
        "iPad3,5"  : "iPad 4",
        "iPad3,6"  : "iPad 4",
        
        "iPad4,1"  : "iPad Air",
        "iPad4,2"  : "iPad Air",
        "iPad4,3"  : "iPad Air",
        "iPad4,4"  : "iPad Mini 2",
        "iPad4,5"  : "iPad Mini 2",
        "iPad4,6"  : "iPad Mini 2",
        "iPad4,7"  : "iPad Mini 3",
        "iPad4,8"  : "iPad Mini 3",
        "iPad4,9"  : "iPad Mini 3",
        
        "iPad5,1"  : "iPad Mini 4",
        "iPad5,2"  : "iPad Mini 4",
        "iPad5,3"  : "iPad Air 2",
        "iPad5,4"  : "iPad Air 2",
        
        "iPad6,3"  : "iPad Pro 9.7 inch",
        "iPad6,4"  : "iPad Pro 9.7 inch",
        "iPad6,7"  : "iPad Pro 12.9 inch",
        "iPad6,8"  : "iPad Pro 12.9 inch",
        "iPad6,11" : "iPad 5",
        "iPad6,12" : "iPad 5",
        
        "iPad7,1"   : "iPad Pro 2 12.9 inch",
        "iPad7,2"   : "iPad Pro 2 12.9 inch",
        "iPad7,3"   : "iPad Pro 10.5 inch",
        "iPad7,4"   : "iPad Pro 10.5 inch",
        
        "iPad7,5"   : "iPad 6",
        "iPad7,6"   : "iPad 6",
        "iPad8,1"   : "iPad Pro 3 11 inch",
        "iPad8,2"   : "iPad Pro 3 11 inch",
        "iPad8,3"   : "iPad Pro 3 11 inch",
        "iPad8,4"   : "iPad Pro 3 11 inch",
        "iPad8,5"   : "iPad Pro 3 12.9 inch",
        "iPad8,6"   : "iPad Pro 3 12.9 inch",
        "iPad8,7"   : "iPad Pro 3 12.9 inch",
        "iPad8,8"   : "iPad Pro 3 12.9 inch",
        
        // iPod
        "iPod1,1" : "iPod touch",
        "iPod2,1" : "iPod touch 2G",
        "iPod3,1" : "iPod touch 3G",
        "iPod4,1" : "iPod touch 4G",
        "iPod5,1" : "iPod touch 5G",
        "iPod7,1" : "iPod touch 6G",
        
        // Apple Watch
        "Watch1,1" : "Apple Watch 38mm",
        "Watch1,2" : "Apple Watch 42mm",
        
        "Watch2,6" : "Apple Watch Series 1 38mm",
        "Watch2,7" : "Apple Watch Series 1 42mm",
        
        "Watch2,3" : "Apple Watch Series 2 38mm",
        "Watch2,4" : "Apple Watch Series 2 42mm",
        
        "Watch3,1" : "Apple Watch Series 3 38mm",
        "Watch3,2" : "Apple Watch Series 3 42mm",
        "Watch3,3" : "Apple Watch Series 3 38mm",
        "Watch3,4" : "Apple Watch Series 3 42mm",
        
        "Watch4,1" : "Apple Watch Series 4 40mm",
        "Watch4,2" : "Apple Watch Series 4 44mm",
        "Watch4,3" : "Apple Watch Series 4 40mm",
        "Watch4,4" : "Apple Watch Series 4 44mm",
        
        // AppleTV
        "AppleTV5,3"   : "Apple TV 4",
        "AppleTV6,2"   : "Apple TV 4K",
        
        "x86_64"    : "Simulator",
        "i386"      : "Simulator",
]

public extension UIDevice {
    var modelCode: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let mirror = Mirror(reflecting: systemInfo.machine)
        var identifier = ""
        
        for child in mirror.children {
            if let value = child.value as? Int8, value != 0 {
                identifier.append(String(UnicodeScalar(UInt8(value))))
            }
        }
        
        return identifier
    }
    
    var modelName: String {
        let code = modelCode
        return devices[code] ?? code
    }
}
