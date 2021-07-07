import XCTest

import ARKit
import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class AnchorEntityTests: XCTestCase {

    func testInitializerAvailability_init_plane_classification_minimumBounds() {
        _ = RealityKit.AnchorEntity(plane: .any)
        _ = RealityKit.AnchorEntity.init(plane: .any)
        _ = RealityKit.AnchorEntity(plane: .any, classification: .any)
        _ = RealityKit.AnchorEntity.init(plane: .any, classification: .any)
        _ = RealityKit.AnchorEntity(plane: .any, classification: .any, minimumBounds: [0, 0])
        _ = RealityKit.AnchorEntity.init(plane: .any, classification: .any, minimumBounds: [0, 0])
    }

    func testInitializerAvailability_init_anchor() {
        _ = RealityKit.AnchorEntity(anchor: ARAnchor(name: "⚓︎", transform: matrix_identity_float4x4))
        _ = RealityKit.AnchorEntity.init(anchor: ARAnchor(name: "⚓︎", transform: matrix_identity_float4x4))
    }

    func testInitializerAvailability_init_raycastResult() {
        let _ : (ARKit.ARRaycastResult) -> RealityKit.AnchorEntity = {
            RealityKit.AnchorEntity(raycastResult: $0)
        }
        let _ : (ARKit.ARRaycastResult) -> RealityKit.AnchorEntity = {
            RealityKit.AnchorEntity.init(raycastResult: $0)
        }
    }

}
