import XCTest

import RealityKitt
import RealityKit

@available(iOS 13.0, *)
final class RealityFoundationBodyTrackedEntityTests: XCTestCase {

    func testBaseClass() {
        _ = { BodyTrackedEntity() as Entity }
    }

    func testProtocolConformance_Hashable() {
        _ = { BodyTrackedEntity().hashValue  }
    }

    func testProtocolConformance_HasBodyTracking() {
        _ = { BodyTrackedEntity().bodyTracking  }
    }

}
