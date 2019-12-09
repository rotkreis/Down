//
//  ParagraphStyleCollection.swift
//  Down
//
//  Created by John Nguyen on 27.07.19.
//  Copyright © 2016-2019 Down. All rights reserved.
//

#if !os(watchOS) && !os(Linux)

#if canImport(UIKit)

import UIKit

#elseif canImport(AppKit)

import AppKit

#endif

public struct ParagraphStyleCollection {

    public var heading1: NSParagraphStyle
    public var heading2: NSParagraphStyle
    public var heading3: NSParagraphStyle
    public var body: NSParagraphStyle
    public var code: NSParagraphStyle

    public init() {
        let headingStyle = NSMutableParagraphStyle()
        headingStyle.paragraphSpacing = 6

        let bodyStyle = NSMutableParagraphStyle()
        bodyStyle.paragraphSpacingBefore = 6
        bodyStyle.paragraphSpacing = 6
        bodyStyle.lineSpacing = 0

        let codeStyle = NSMutableParagraphStyle()
        codeStyle.paragraphSpacingBefore = 6
        codeStyle.paragraphSpacing = 6

        heading1 = headingStyle
        heading2 = headingStyle
        heading3 = headingStyle
        body = bodyStyle
        code = codeStyle
    }
}

#endif
