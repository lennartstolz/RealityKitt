#if targetEnvironment(simulator)

import UIKit
import RealityFoundation

@available(iOS 13.0, *)
public protocol EntityGestureRecognizer : UIKit.UIGestureRecognizer {

    var entity: RealityFoundation.HasCollision? { get set }

    func location(in entity: RealityFoundation.Entity?) -> Swift.SIMD3<Swift.Float>?

}

@available(iOS 13.0, *)
extension EntityGestureRecognizer {

    public func location(in entity: RealityFoundation.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

}

#endif
