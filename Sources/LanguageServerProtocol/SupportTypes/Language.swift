//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// A source code language identifier, such as "swift", or "objective-c".
public struct Language: RawRepresentable, Codable, Equatable, Hashable {
  public typealias LanguageId = String

  public let rawValue: LanguageId
  public init(rawValue: LanguageId) {
    self.rawValue = rawValue
  }

  /// Clang-compatible language name suitable for use with `-x <language>`.
  public var xflag: String? {
    switch self {
      case .swift: return "swift"
      case .c: return "c"
      case .cpp: return "c++"
      case .objective_c: return "objective-c"
      case .objective_cpp: return "objective-c++"
      default: return nil
    }
  }

  /// Clang-compatible language name for a header file. See `xflag`.
  public var xflagHeader: String? {
    return xflag.map { "\($0)-header" }
  }
}

extension Language: CustomStringConvertible {
  public var description: String {
    return rawValue
  }
}

public extension Language {
  static let abap = Language(rawValue: "abap")
  static let bat = Language(rawValue: "bat") // Windows Bat
  static let bibtex = Language(rawValue: "bibtex")
  static let clojure = Language(rawValue: "clojure")
  static let coffeescript = Language(rawValue: "coffeescript")
  static let c = Language(rawValue: "c")
  static let cpp = Language(rawValue: "cpp") // C++, not C preprocessor
  static let csharp = Language(rawValue: "csharp")
  static let css = Language(rawValue: "css")
  static let diff = Language(rawValue: "diff")
  static let dart = Language(rawValue: "dart")
  static let dockerfile = Language(rawValue: "dockerfile")
  static let fsharp = Language(rawValue: "fsharp")
  static let git_commit = Language(rawValue: "git-commit")
  static let git_rebase = Language(rawValue: "git-rebase")
  static let go = Language(rawValue: "go")
  static let groovy = Language(rawValue: "groovy")
  static let handlebars = Language(rawValue: "handlebars")
  static let html = Language(rawValue: "html")
  static let ini = Language(rawValue: "ini")
  static let java = Language(rawValue: "java")
  static let javaScript = Language(rawValue: "javascript")
  static let javaSriptReact = Language(rawValue: "javascriptreact")
  static let json = Language(rawValue: "json")
  static let latex = Language(rawValue: "latex")
  static let less = Language(rawValue: "less")
  static let lua = Language(rawValue: "lua")
  static let makefile = Language(rawValue: "makefile")
  static let markdown = Language(rawValue: "markdown")
  static let objective_c = Language(rawValue: "objective-c")
  static let objective_cpp = Language(rawValue: "objective-cpp")
  static let perl = Language(rawValue: "perl")
  static let perl6 = Language(rawValue: "perl6")
  static let php = Language(rawValue: "php")
  static let powershell = Language(rawValue: "powershell")
  static let jade = Language(rawValue: "jade")
  static let python = Language(rawValue: "python")
  static let r = Language(rawValue: "r")
  static let razor = Language(rawValue: "razor") // Razor (cshtml)
  static let ruby = Language(rawValue: "ruby")
  static let rust = Language(rawValue: "rust")
  static let scss = Language(rawValue: "scss") // SCSS (syntax using curly brackets)
  static let sass = Language(rawValue: "sass") // SCSS (indented syntax)
  static let scala = Language(rawValue: "scala")
  static let shaderLab = Language(rawValue: "shaderlab")
  static let shellScript = Language(rawValue: "shellscript") // Shell Script (Bash)
  static let sql = Language(rawValue: "sql")
  static let swift = Language(rawValue: "swift")
  static let typeScript = Language(rawValue: "typescript")
  static let typeScriptReact = Language(rawValue: "typescriptreact") // TypeScript React
  static let tex = Language(rawValue: "tex")
  static let vb = Language(rawValue: "vb") // Visual Basic
  static let xml = Language(rawValue: "xml")
  static let xsl = Language(rawValue: "xsl")
  static let yaml = Language(rawValue: "yaml")
}
