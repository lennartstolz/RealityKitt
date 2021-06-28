#if targetEnvironment(simulator)

import UIKit
import RealityKit

@available(iOS 13.0, *)
open class EntityRotationGestureRecognizer : UIKit.UIRotationGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityKit.HasCollision?

}

#endif
