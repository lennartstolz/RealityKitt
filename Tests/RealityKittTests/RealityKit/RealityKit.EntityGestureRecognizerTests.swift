import XCTest

import UIKit
import RealityKit
import RealityKitt
import RealityFoundation

@available(iOS 13.0, *)
final class RealityKitEntityGestureRecognizerTests: XCTestCase {

    func testProtocolAvailability() {
        let _: EntityGestureRecognizer = GestureMock()
    }

    func testInstancePropertyAvailability_entity() {
        let gestureRecognizer: EntityGestureRecognizer = GestureMock()
        let _: RealityKit.HasCollision? = gestureRecognizer.entity
    }

    func testInstanceMethodAvailability_location() {
        let gestureRecognizer: EntityGestureRecognizer = GestureMock()
        let _: Swift.SIMD3<Swift.Float>? = gestureRecognizer.location(in: nil)
    }

}
@available(iOS 13.0, *)
private class GestureMock: UIKit.UIGestureRecognizer, EntityGestureRecognizer {

    var entity: RealityFoundation.HasCollision?

    init() {
        super.init(target: nil, action: nil)
    }

}
