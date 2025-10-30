public struct ConfigurationProvider: Sendable {
    public let getDbConfiguration: DbConfigurationCallback

    public init(getDbConfiguration: @escaping DbConfigurationCallback) {
        self.getDbConfiguration = getDbConfiguration
    }
}
