#if targetEnvironment(simulator)

import RealityKit

/// Simulator interface mock of `HasBodyTracking`.
///
/// The (real) protocol isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this protocol
/// with `RealityKit.HasBodyTracking`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/hasbodytracking)
@available(iOS 13.0, *)
public protocol HasBodyTracking : RealityKit.HasTransform { }

@available(iOS 13.0, *)
extension HasBodyTracking {

    /// Simulator interface mock of the instance property `HasBodyTracking.bodyTracking`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/hasbodytracking/3255583-bodytracking)
    public var bodyTracking: BodyTrackingComponent { .init() }

}

#endif
