import Foundation

public struct DatabaseConfiguration {
    public let host: String
    public let username: String
    public let password: String
    public let port: String
    public let databasename: String

    public init(host: String, username: String, password: String, port: String, databasename: String) {
        self.host = host
        self.username = username
        self.password = password
        self.port = port
        self.databasename = databasename
    }

    public func getUrl() -> String {
        "postgres+tcp://\(username):\(password)@\(host):\(port)/\(databasename)?tlsmode=prefer"
    }
}
