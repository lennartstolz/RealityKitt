import XCTest

import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class EntityRotationGestureRecognizerTests: XCTestCase {

    func testProtocolConformance_EntityGestureRecognizer() {
        let _: EntityGestureRecognizer = EntityRotationGestureRecognizer(target: nil, action: nil)
    }

    func testInstancePropertyAvailability_entity() {
        _ = EntityRotationGestureRecognizer(target: nil, action: nil).entity
    }

    func testInstanceMethodAvailability_location() {
        _ = EntityRotationGestureRecognizer(target: nil, action: nil).location(in: nil)
    }

    func testSubclassing() {
        class Subclass: EntityRotationGestureRecognizer { }
        _ = Subclass(target: nil, action: nil)
    }

}
