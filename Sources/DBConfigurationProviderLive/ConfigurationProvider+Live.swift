import Foundation
import DBConfigurationProvider
import Dependencies
import Vapor

extension ConfigurationProvider: DependencyKey {
    nonisolated(unsafe) public static var liveValue = Self {
        guard let host = Environment.get("DATABASE_HOST"),
              let username = Environment.get("DATABASE_USERNAME"),
              let port = Environment.get("DATABASE_PORT"),
              let databasename = Environment.get("DATABASE_NAME"),
              let password = Environment.get("DATABASE_PASSWORD")
        else { return nil }

        return DatabaseConfiguration(host: host,
                                     username: username,
                                     password: password,
                                     port: port,
                                     databasename: databasename)
    }
}
