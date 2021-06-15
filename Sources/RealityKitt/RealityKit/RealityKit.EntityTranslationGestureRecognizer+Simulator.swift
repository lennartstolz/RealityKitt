#if targetEnvironment(simulator)

import UIKit
import RealityKit
import RealityKit

@available(iOS 13.0, *)
open class EntityTranslationGestureRecognizer : UIKit.UIGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityKit.HasCollision?

    open func translation(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

    open func setTranslation(_ translation: Swift.SIMD3<Swift.Float>, in: RealityKit.Entity?) { }

    open func velocity(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float> { .zero }
}

#endif
