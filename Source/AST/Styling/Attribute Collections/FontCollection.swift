//
//  FontCollection.swift
//  Down
//
//  Created by John Nguyen on 22.06.19.
//  Copyright © 2016-2019 Down. All rights reserved.
//

#if !os(watchOS) && !os(Linux)

#if canImport(UIKit)

import UIKit
public typealias DownFont = UIFont

#elseif canImport(AppKit)

import AppKit
public typealias DownFont = NSFont

#endif

public protocol FontCollection {
    
    var heading1: DownFont { get }
    var heading2: DownFont { get }
    var heading3: DownFont { get }
    var body: DownFont { get }
    var code: DownFont { get }
    var listItemPrefix: DownFont { get }
}

public struct StaticFontCollection: FontCollection {
    
    public var heading1: DownFont
    public var heading2: DownFont
    public var heading3: DownFont
    public var body: DownFont
    public var code: DownFont
    public var listItemPrefix: DownFont
    
    public init(
        heading1: DownFont = .boldSystemFont(ofSize: 28),
        heading2: DownFont = .boldSystemFont(ofSize: 24),
        heading3: DownFont = .boldSystemFont(ofSize: 20),
        body: DownFont = .systemFont(ofSize: 17),
        code: DownFont = DownFont(name: "menlo", size: 17) ?? .systemFont(ofSize: 17),
        listItemPrefix: DownFont = DownFont.monospacedDigitSystemFont(ofSize: 17, weight: .regular)
    ) {
        if #available(iOS 12.0, *) {
            let body = UIFont.preferredFont(forTextStyle: .body)
            let mono = UIFont.monospacedSystemFont(ofSize: body.pointSize, weight: .regular)
            let heading1 = UIFont.preferredFont(forTextStyle: .title1)
            let heading2 = UIFont.preferredFont(forTextStyle: .title2)
            let heading3 = UIFont.preferredFont(forTextStyle: .title3)
            let listItemPrefix = body
            
            self.heading1 = heading1
            self.heading2 = heading2
            self.heading3 = heading3
            self.body = body
            self.code = mono
            self.listItemPrefix = listItemPrefix
        }
        else {
            self.heading1 = heading1
            self.heading2 = heading2
            self.heading3 = heading3
            self.body = body
            self.code = code
            self.listItemPrefix = listItemPrefix
        }
    }
}

#endif
