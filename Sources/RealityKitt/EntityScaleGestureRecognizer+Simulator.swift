#if targetEnvironment(simulator)

import UIKit
import RealityKit

/// Simulator interface mock of `EntityScaleGestureRecognizer`.
///
/// The (real) gesture recognizer isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this class with
/// `RealityKit.EntityScaleGestureRecognizer`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/entityscalegesturerecognizer)
@available(iOS 13.0, *)
open class EntityScaleGestureRecognizer : UIKit.UIPinchGestureRecognizer, EntityGestureRecognizer {

    /// Simulator interface mock of the instance property `EntityScaleGestureRecognizer.entity`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entityscalegesturerecognizer/3368199-entity)
    public var entity: RealityKit.HasCollision?

}

#endif
