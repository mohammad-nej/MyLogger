// The Swift Programming Language
// https://docs.swift.org/swift-book


import OSLog


public struct Logger : Sendable {
    
   
    ///You can enable/disable logging by setting this property
    public var enabled : Bool
    
    ///logger object that is used to log. You can log directly using this object to
    ///by pass enable switch.
    public let logger :  os.Logger
    
    public init(subsystem: String, category: String, verbose: Bool,enabled : Bool = true) {
        logger = os.Logger(subsystem: subsystem, category: category)
        self.enabled = enabled
    }
    
    public func log(_ message: String) {
        guard enabled else { return }
        logger.log("\(message)")
    }
    public func debug(_ message: String) {
        guard enabled else { return }
        logger.debug("\(message)")
    }
    public func info(_ message: String) {
        guard enabled else { return }
        logger.info("\(message)")
    }
    
    public func error(_ message: String, byPass : Bool) {
        if !byPass {
            guard enabled else { return }
        }
        logger.error("\(message)")
    }
    public func warning(_ message: String, byPass : Bool) {
        if !byPass {
            guard enabled else { return }
        }
        logger.warning("\(message)")
    
    }
    public func trace(_ message: String) {
        guard enabled else { return }
        logger.trace("\(message)")
    }
    public func notice(_ message: String) {
        guard enabled else { return }
        logger.notice("\(message)")
    }
    public func critical(_ message: String) {
        guard enabled else { return }
        logger.critical("\(message)")
    }
    public func fault(_ message: String) {
        guard enabled else { return }
        logger.fault("\(message)")
        
    }
    public func log(level : OSLogType , _ message: String) {
        guard enabled else { return }
        logger.log(level: level, "\(message)")
    }
}
