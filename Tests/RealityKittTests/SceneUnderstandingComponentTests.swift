import XCTest

import RealityKit
import RealityKitt

// MARK: - RealityKit.SceneUnderstandingComponent

@available(iOS 15.0, *)
final class SceneUnderstandingComponentTests: XCTestCase {

    func testInitializerAvailability_init() {
        _ = { SceneUnderstandingComponent() }
        _ = { SceneUnderstandingComponent.init() }
    }

    func testInitializerAvailability_init_entityType() {
        _ = { SceneUnderstandingComponent(entityType: nil) }
        _ = { SceneUnderstandingComponent.init(entityType: nil) }
        _ = { SceneUnderstandingComponent(entityType: .face) }
        _ = { SceneUnderstandingComponent.init(entityType: .face) }
    }

    func testInstancePropertyAvailability_entityType() {
        _ = { SceneUnderstandingComponent().entityType  }
    }

}

// MARK: - RealityKit.SceneUnderstandingComponent.EntityType

@available(iOS 15.0, *)
final class SceneUnderstandingComponentEntityTypeTests: XCTestCase {

    typealias EntityType = SceneUnderstandingComponent.EntityType

    func testEnumCaseAvailability_face() {
        _ = { EntityType.face }
    }

    func testEnumCaseAvailability_meshChunk() {
        _ = { EntityType.meshChunk }
    }

    func testProtocolConformance_Hashable() {
        _ = { EntityType.face.hashValue }
    }

}
