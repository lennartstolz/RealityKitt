#if targetEnvironment(simulator)

import UIKit
import RealityKit

/// Simulator interface mock of `EntityRotationGestureRecognizer`.
///
/// The (real) gesture recognizer isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this class with
/// `RealityKit.EntityRotationGestureRecognizer`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/entityrotationgesturerecognizer)
@available(iOS 13.0, *)
open class EntityRotationGestureRecognizer : UIKit.UIRotationGestureRecognizer, EntityGestureRecognizer {

    /// Simulator interface mock of the instance property `EntityRotationGestureRecognizer.entity`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entityrotationgesturerecognizer/3368198-entity)
    public var entity: RealityKit.HasCollision?

}

#endif
