//
//  CarthageParser+Context.swift
//  
//
//  Created by Aleksandr Karimov on 09.01.2022.
//

import Foundation

//
// See the documentation file for a full description of this context's structure:
// Documentation/SwiftGenKit Contexts/json.md
//

extension Directories.Parser {
    
  public func stencilContext() -> [String: Any] {
      let files = self.directories
      .sorted { lhs, rhs in lhs.name < rhs.name }
      .map(map(file:))

    return [
      "directories": files
    ]
  }

  private func map(file: Directories.File) -> [String: Any] {

    return [
      "name": file.name,
      "path": file.path.string
    ]
  }
}
