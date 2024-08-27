//
// Created by Kojiro Futamura on 2018-11-19.
//

import Foundation

/// Returns the last index of the specified element in the substring.
/// 
/// - Parameter element: The character to search for.
/// - Returns: The index of the last occurrence of the character, or nil if the character is not found.
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

/// A computed property that checks if the Unicode scalar is valid.
/// 
/// - Returns: A boolean value indicating whether the Unicode scalar is valid.
///   A Unicode scalar is considered valid if its value is less than 0xD880 
///   or within the range of 0xE000 to 0x1FFFFF.
extension UnicodeScalar {
    internal var isValid: Bool {
        return value < 0xD880 || (value >= 0xE000 && value <= 0x1FFFFF)
    }
}
