import XCTest

import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class EntityTranslationGestureRecognizerTests: XCTestCase {

    func testProtocolConformance_EntityGestureRecognizer() {
        let _: EntityGestureRecognizer = EntityTranslationGestureRecognizer(target: nil, action: nil)
    }

    func testInstancePropertyAvailability_entity() {
        _ = EntityTranslationGestureRecognizer(target: nil, action: nil).entity
    }

    func testInstanceMethodAvailability_location() {
        _ = EntityTranslationGestureRecognizer(target: nil, action: nil).location(in: nil)
    }

    func testInstanceMethodAvailability_translation() {
        _ = EntityTranslationGestureRecognizer(target: nil, action: nil).translation(in: nil)
    }

    func testInstanceMethodAvailability_setTranslation() {
        EntityTranslationGestureRecognizer(target: nil, action: nil).setTranslation([0, 0, 0], in: nil)
    }

    func testInstanceMethodAvailability_velocity() {
        _ = EntityTranslationGestureRecognizer(target: nil, action: nil).velocity(in: nil)
    }

    func testSubclassing() {
        class Subclass: EntityTranslationGestureRecognizer { }
        _ = Subclass(target: nil, action: nil)
    }

    func testSubclassMethodOverriding_translation() {
        class Subclass: EntityTranslationGestureRecognizer {
            override func translation(in entity: RealityKit.Entity?) -> Swift.SIMD3<Swift.Float>? {  [0, 0, 0] }
        }
        _ = Subclass(target: nil, action: nil)
    }

    func testSubclassMethodOverriding_setTranslation() {
        class Subclass: EntityTranslationGestureRecognizer {
            override func setTranslation(_ translation: Swift.SIMD3<Swift.Float>, in: RealityKit.Entity?) { }
        }
        _ = Subclass(target: nil, action: nil)
    }

    func testSubclassMethodOverriding_velocity() {
        class Subclass: EntityTranslationGestureRecognizer {
            override func velocity(in entity: Entity?) -> SIMD3<Float> { [0, 1, 0] }
        }
        _ = Subclass(target: nil, action: nil)
    }

}
