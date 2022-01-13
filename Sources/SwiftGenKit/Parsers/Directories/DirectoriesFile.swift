//
//  CarthageFile.swift
//  
//
//  Created by Aleksandr Karimov on 09.01.2022.
//

import Foundation
import PathKit

public extension Directories {
  struct File {
    let path: Path
    let name: String

    init(path: Path, relativeTo parent: Path? = nil) {
      self.path = parent.flatMap { path.relative(to: $0) } ?? path
      self.name = path.lastComponentWithoutExtension

    }
  }
}
