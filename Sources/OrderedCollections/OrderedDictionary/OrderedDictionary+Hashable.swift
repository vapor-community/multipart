//===----------------------------------------------------------------------===//
//
// This source file is part of the Vapor open source project
//
// Copyright (c) 2017-2021 Vapor project authors
// Licensed under MIT
//
// See LICENSE for license information
//
// SPDX-License-Identifier: MIT
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//
// This was included from Apple's Swift Collections project. The license for the
// original work is reproduced below. See NOTICES.txt for more.
//
// Copyright (c) 2021 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

extension OrderedDictionary: Hashable where Value: Hashable {
  /// Hashes the essential components of this value by feeding them into the
  /// given hasher.
  ///
  /// Complexity: O(`count`)
  @inlinable
  public func hash(into hasher: inout Hasher) {
    hasher.combine(count) // Discriminator
    for (key, value) in self {
      hasher.combine(key)
      hasher.combine(value)
    }
  }
}
