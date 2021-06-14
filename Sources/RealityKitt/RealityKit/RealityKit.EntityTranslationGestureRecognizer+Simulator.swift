#if targetEnvironment(simulator)

import UIKit
import RealityKit
import RealityFoundation

@available(iOS 13.0, *)
open class EntityTranslationGestureRecognizer : UIKit.UIGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityFoundation.HasCollision?

    open func translation(in entity: RealityFoundation.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

    open func setTranslation(_ translation: Swift.SIMD3<Swift.Float>, in: RealityKit.Entity?) { }

    open func velocity(in entity: RealityFoundation.Entity?) -> Swift.SIMD3<Swift.Float> { .zero }
}

#endif
