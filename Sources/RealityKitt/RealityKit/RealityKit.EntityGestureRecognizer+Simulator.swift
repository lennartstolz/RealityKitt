#if targetEnvironment(simulator)

import UIKit
import RealityKit

@available(iOS 13.0, *)
public protocol EntityGestureRecognizer : UIKit.UIGestureRecognizer {

    var entity: RealityKit.HasCollision? { get set }

    func location(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>?

}

@available(iOS 13.0, *)
extension EntityGestureRecognizer {

    public func location(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>? { nil }

}

#endif
