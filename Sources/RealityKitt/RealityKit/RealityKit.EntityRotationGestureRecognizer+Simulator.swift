#if targetEnvironment(simulator)

import UIKit
import RealityFoundation

@available(iOS 13.0, *)
open class EntityRotationGestureRecognizer : UIKit.UIRotationGestureRecognizer, EntityGestureRecognizer {

    public var entity: RealityFoundation.HasCollision?

}

#endif
