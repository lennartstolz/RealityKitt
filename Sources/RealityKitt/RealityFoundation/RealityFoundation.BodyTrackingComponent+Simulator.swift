#if targetEnvironment(simulator)

import Foundation
import RealityFoundation

@available(iOS 13.0, *)
public struct BodyTrackingComponent : RealityFoundation.Component, Swift.Equatable {

    public enum Target : Swift.Hashable {
        case any
        case body(identifier: Foundation.UUID)
    }

    public var target: BodyTrackingComponent.Target

    public var isPaused: Swift.Bool

    public init() {
        self.target = .any
        self.isPaused = false
    }

    public init(_ target: BodyTrackingComponent.Target) {
        self.target = target
        self.isPaused = false
    }

}

#endif
