import Foundation
import Dependencies

extension ConfigurationProvider: TestDependencyKey {
    public static let testValue = Self {
        DatabaseConfiguration(
            host: "localhost",
            username: "postgres",
            password: "uWie3ii3",
            port: "5432",
            databasename: "tbbt_test")
    }
}
