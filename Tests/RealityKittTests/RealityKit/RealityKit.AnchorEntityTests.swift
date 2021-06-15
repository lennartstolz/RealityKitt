import XCTest

import ARKit
import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class RealityKitAnchorEntityTests: XCTestCase {

    func testInitializerAvailability_init_anchor() {
        _ = { AnchorEntity(anchor: ARAnchor(name: "⚓︎", transform: matrix_identity_float4x4)) }
        _ = { AnchorEntity.init(anchor: ARAnchor(name: "⚓︎", transform: matrix_identity_float4x4))  }
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
