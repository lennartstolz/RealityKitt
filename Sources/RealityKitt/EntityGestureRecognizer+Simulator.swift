#if targetEnvironment(simulator)

import UIKit
import RealityKit

/// Simulator interface mock of `EntityGestureRecognizer`.
///
/// The (real) protocol isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this protocol
/// with `RealityKit.EntityGestureRecognizer`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/entitygesturerecognizer)
@available(iOS 13.0, *)
public protocol EntityGestureRecognizer : UIKit.UIGestureRecognizer {

    /// Simulator interface mock of the property `EntityGestureRecognizer.entity`.
    ///
    /// The (real) property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitygesturerecognizer/3368197-entity)
    var entity: RealityKit.HasCollision? { get set }

    /// Simulator interface mock of the method `EntityGestureRecognizer.location(in:)`.
    ///
    /// The (real) property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitygesturerecognizer/3752730-location)
    func location(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>?

}

@available(iOS 13.0, *)
extension EntityGestureRecognizer {

    public func location(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

}

#endif
