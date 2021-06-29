#if targetEnvironment(simulator)

import UIKit
import RealityKit

/// Simulator interface mock of `EntityTranslationGestureRecognizer`.
///
/// The (real) gesture recognizer isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this class with
/// `RealityKit.EntityTranslationGestureRecognizer`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/entitytranslationgesturerecognizer)
@available(iOS 13.0, *)
open class EntityTranslationGestureRecognizer : UIKit.UIGestureRecognizer, EntityGestureRecognizer {

    /// Simulator interface mock of the instance property `EntityTranslationGestureRecognizer.entity`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitytranslationgesturerecognizer/3368200-entity)
    public var entity: RealityKit.HasCollision?

    /// Simulator interface mock of the instance method `EntityTranslationGestureRecognizer.translation(in:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitytranslationgesturerecognizer/3255580-translation)
    open func translation(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

    /// Simulator interface mock of the instance method `EntityTranslationGestureRecognizer.setTranslation(_:in:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitytranslationgesturerecognizer/3255576-settranslation)
    open func setTranslation(_ translation: Swift.SIMD3<Swift.Float>, in: RealityKit.Entity?) { }

    /// Simulator interface mock of the instance method `EntityTranslationGestureRecognizer.velocity(in:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entitytranslationgesturerecognizer/3255581-velocity)
    open func velocity(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float> { .zero }
}

#endif
