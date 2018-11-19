//
// Created by kojirof on 2018-11-19.
// Copyright (c) 2018 Gumob. All rights reserved.
//

import Foundation

// For calling site convenience everything is implemented over Substring and String API is wrapped around it
public extension Substring {
    /// Returns new string in punycode encoding (RFC 3492)
    ///
    /// - Returns: Punycode encoded string or nil if the string can't be encoded
    var punycodeEncoded: String? {
        return Punycode().encodePunycode(self)
    }

    /// Returns new string decoded from punycode representation (RFC 3492)
    ///
    /// - Returns: Original string or nil if the string doesn't contain correct encoding
    var punycodeDecoded: String? {
        return Punycode().decodePunycode(self)
    }

    /// Returns new string containing IDNA-encoded hostname
    ///
    /// - Returns: IDNA encoded hostname or nil if the string can't be encoded
    var idnaEncoded: String? {
        return Punycode().encodeIDNA(self)
    }

    /// Returns new string containing hostname decoded from IDNA representation
    ///
    /// - Returns: Original hostname or nil if the string doesn't contain correct encoding
    var idnaDecoded: String? {
        return Punycode().decodedIDNA(self)
    }
}

public extension String {

    /// Returns new string in punycode encoding (RFC 3492)
    ///
    /// - Returns: Punycode encoded string or nil if the string can't be encoded
    var punycodeEncoded: String? {
        return self[..<self.endIndex].punycodeEncoded
    }

    /// Returns new string decoded from punycode representation (RFC 3492)
    ///
    /// - Returns: Original string or nil if the string doesn't contain correct encoding
    var punycodeDecoded: String? {
        return self[..<self.endIndex].punycodeDecoded
    }

    /// Returns new string containing IDNA-encoded hostname
    ///
    /// - Returns: IDNA encoded hostname or nil if the string can't be encoded
    var idnaEncoded: String? {
        return self[..<self.endIndex].idnaEncoded
    }

    /// Returns new string containing hostname decoded from IDNA representation
    ///
    /// - Returns: Original hostname or nil if the string doesn't contain correct encoding
    var idnaDecoded: String? {
        return self[..<self.endIndex].idnaDecoded
    }
}
