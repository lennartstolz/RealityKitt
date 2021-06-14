import XCTest

import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class RealityKitEntityScaleGestureRecognizerTests: XCTestCase {

    func testProtocolConformance_EntityGestureRecognizer() {
        let _: EntityGestureRecognizer = EntityScaleGestureRecognizer(target: nil, action: nil)
    }

    func testInstancePropertyAvailability_entity() {
        _ = EntityScaleGestureRecognizer(target: nil, action: nil).entity
    }

    func testInstanceMethodAvailability_location() {
        _ = EntityScaleGestureRecognizer(target: nil, action: nil).location(in: nil)
    }

    func testSubclassing() {
        class Subclass: EntityScaleGestureRecognizer { }
        _ = Subclass(target: nil, action: nil)
    }

}
