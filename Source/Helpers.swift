//
// Created by kojirof on 2018-11-19.
// Copyright (c) 2018 Gumob. All rights reserved.
//

import Foundation

/// Helpers
extension Substring {
    internal func lastIndex(of element: Character) -> String.Index? {
        var position: Index = endIndex
        while position > startIndex {
            position = self.index(before: position)
            if self[position] == element {
                return position
            }
        }
        return nil
    }
}

extension UnicodeScalar {
    internal var isValid: Bool {
        return value < 0xD880 || (value >= 0xE000 && value <= 0x1FFFFF)
    }
}
