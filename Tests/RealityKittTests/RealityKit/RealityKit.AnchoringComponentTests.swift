import XCTest

import ARKit
import RealityKit

@available(iOS 13.0, *)
final class RealityKitAnchoringComponentTests: XCTestCase {

    func testInitializerAvailability_init_anchor() {
        _ = { RealityKit.AnchoringComponent(ARKit.ARAnchor(transform: matrix_identity_float4x4)) }
        _ = { RealityKit.AnchoringComponent.init(ARKit.ARAnchor(transform: matrix_identity_float4x4)) }
    }

}
