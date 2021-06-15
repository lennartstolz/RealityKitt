#if targetEnvironment(simulator)
import UIKit
import RealityKit

@available(iOS 13.0, *)
open class EntityScaleGestureRecognizer : UIKit.UIPinchGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityKit.HasCollision?

}

#endif
