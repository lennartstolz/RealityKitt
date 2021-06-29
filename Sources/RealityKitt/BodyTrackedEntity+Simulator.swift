#if targetEnvironment(simulator)

import RealityKit

/// Simulator interface mock of `BodyTrackedEntity`.
///
/// The (real) entity isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this class with
/// `RealityKit.BodyTrackedEntity`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/bodytrackedentity)
@available(iOS 13.0, *)
public class BodyTrackedEntity : RealityKit.Entity, HasBodyTracking, RealityKit.HasModel { }

#endif
