import XCTest

import RealityKit

// MARK: - RealityKit.AnchorEntity + Initializer

@available(iOS 13.0, *)
final class RealityFoundationAnchorEntityTests: XCTestCase {

    func testInitializerAvailability_init_plane_classification_minimumBounds() {
        _ = { RealityKit.AnchorEntity(plane: .any) }
        _ = { RealityKit.AnchorEntity.init(plane: .any) }
        _ = { RealityKit.AnchorEntity(plane: .any, classification: .any) }
        _ = { RealityKit.AnchorEntity.init(plane: .any, classification: .any) }
        _ = { RealityKit.AnchorEntity(plane: .any, classification: .any, minimumBounds: [0, 0]) }
        _ = { RealityKit.AnchorEntity.init(plane: .any, classification: .any, minimumBounds: [0, 0]) }
    }

}
