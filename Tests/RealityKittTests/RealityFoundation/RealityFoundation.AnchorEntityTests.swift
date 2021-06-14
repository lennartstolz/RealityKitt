import XCTest

import RealityFoundation

// MARK: - RealityFoundation.AnchorEntity + Initializer

@available(iOS 13.0, *)
final class RealityFoundationAnchorEntityTests: XCTestCase {

    func testInitializerAvailability_init_plane_classification_minimumBounds() {
        _ = RealityFoundation.AnchorEntity(plane: .any)
        _ = RealityFoundation.AnchorEntity.init(plane: .any)
        _ = RealityFoundation.AnchorEntity(plane: .any, classification: .any)
        _ = RealityFoundation.AnchorEntity.init(plane: .any, classification: .any)
        _ = RealityFoundation.AnchorEntity(plane: .any, classification: .any, minimumBounds: [0, 0])
        _ = RealityFoundation.AnchorEntity.init(plane: .any, classification: .any, minimumBounds: [0, 0])
    }

}
