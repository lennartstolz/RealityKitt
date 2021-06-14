#if targetEnvironment(simulator)
import UIKit
import RealityFoundation

@available(iOS 13.0, *)
open class EntityScaleGestureRecognizer : UIKit.UIPinchGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityFoundation.HasCollision?

}

#endif
