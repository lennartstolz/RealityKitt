import XCTest

import ARKit
import RealityFoundation

@available(iOS 13.0, *)
final class RealityKitAnchoringComponentTests: XCTestCase {

    func testInitializerAvailability_init_anchor() {
        _ = RealityFoundation.AnchoringComponent(ARKit.ARAnchor(transform: matrix_identity_float4x4))
        _ = RealityFoundation.AnchoringComponent.init(ARKit.ARAnchor(transform: matrix_identity_float4x4))
    }

}
