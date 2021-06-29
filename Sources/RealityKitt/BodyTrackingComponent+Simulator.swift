#if targetEnvironment(simulator)

import Foundation
import RealityKit

/// Simulator interface mock of `BodyTrackingComponent`.
///
/// The (real) component isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this struct with
/// `RealityKit.BodyTrackingComponent`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent)
@available(iOS 13.0, *)
public struct BodyTrackingComponent : RealityKit.Component, Swift.Equatable {

    /// Simulator interface mock of the `BodyTrackingComponent.Target` enumeration.
    ///
    /// The (real) enumeration isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/target)
    public enum Target : Swift.Hashable {
        /// Simulator interface mock of the enum case `any` of the `BodyTrackingComponent.Target` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/target/any)
        case any
        /// Simulator interface mock of the enum case `body(identifier:)` of the `BodyTrackingComponent.Target` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/target/body_identifier)
        case body(identifier: Foundation.UUID)
    }

    /// Simulator interface mock of the instance property `BodyTrackingComponent.target`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/3255541-target)
    public var target: BodyTrackingComponent.Target

    /// Simulator interface mock of the instance property `BodyTrackingComponent.isPaused`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/3255539-ispaused)
    public var isPaused: Swift.Bool

    /// Simulator interface mock of `BodyTrackingComponent.init()`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/3255537-init)
    public init() {
        self.target = .any
        self.isPaused = false
    }

    /// Simulator interface mock of `BodyTrackingComponent.init(_:)`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackingcomponent/3255538-init)
    public init(_ target: BodyTrackingComponent.Target) {
        self.target = target
        self.isPaused = false
    }

}

#endif
