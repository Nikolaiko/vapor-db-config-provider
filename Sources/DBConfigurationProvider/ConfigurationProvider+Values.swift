import Foundation
import Dependencies

extension DependencyValues {
  public var configurationProvider: ConfigurationProvider {
    get { self[ConfigurationProvider.self] }
    set { self[ConfigurationProvider.self] = newValue }
  }
}
