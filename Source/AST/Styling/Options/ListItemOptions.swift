//
//  ListItemOptions.swift
//  Down
//
//  Created by John Nguyen on 04.08.19.
//  Copyright © 2016-2019 Down. All rights reserved.
//

#if !os(watchOS) && !os(Linux)

#if canImport(UIKit)

import UIKit

#elseif canImport(AppKit)

import AppKit

#endif

public struct ListItemOptions {
    public var maxPrefixDigits: UInt = 2
    public var spacingAfterPrefix: CGFloat = 4
    public var spacingAbove: CGFloat = 2
    public var spacingBelow: CGFloat = 2
}

#endif
