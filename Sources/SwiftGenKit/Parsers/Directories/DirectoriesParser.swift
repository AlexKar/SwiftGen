//
//  CarthageParser.swift
//  
//
//  Created by Aleksandr Karimov on 09.01.2022.
//

import Foundation
import PathKit

public enum Directories {

  // MARK: Carthage File Parser

  public final class Parser: SwiftGenKit.Parser {
    private let options: ParserOptionValues
    var directories: [File] = []
    public var warningHandler: Parser.MessageHandler?

    public required init(options: [String: Any] = [:], warningHandler: Parser.MessageHandler? = nil) throws {
      self.options = try ParserOptionValues(options: options, available: Parser.allOptions)
      self.warningHandler = warningHandler
    }

    public static let defaultFilter: String = ".*"
    public static let filterOptions: Filter.Options = [.skipsFiles, .skipsHiddenFiles, .skipsPackageDescendants]

    public func parse(path: Path, relativeTo parent: Path) throws {
        directories.append(File(path: path, relativeTo: parent))
    }
  }
}
