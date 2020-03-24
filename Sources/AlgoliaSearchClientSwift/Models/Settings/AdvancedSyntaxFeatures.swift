//
//  AdvancedSyntaxFeatures.swift
//  
//
//  Created by Vladislav Fitc on 12.03.2020.
//

import Foundation

public enum AdvancedSyntaxFeatures: Codable, Equatable {
  case exactPhrase
  case excludeWords
  case other(String)
}

extension AdvancedSyntaxFeatures: RawRepresentable {

  public var rawValue: String {
    switch self {
    case .exactPhrase:
      return "exactPhrase"
    case .excludeWords:
      return "excludeWords"
    case .other(let value):
      return value
    }
  }

  public init(rawValue: String) {
    switch rawValue {
    case AdvancedSyntaxFeatures.exactPhrase.rawValue:
      self = .exactPhrase
    case AdvancedSyntaxFeatures.excludeWords.rawValue:
      self = .excludeWords
    default:
      self = .other(rawValue)
    }
  }

}
