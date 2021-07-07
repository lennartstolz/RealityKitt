import XCTest

import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class HasBodyTrackingTests: XCTestCase {

    func testProtocolAvailability() {
        class Implementation: Entity, HasBodyTracking { }
        _ = Implementation()
    }

    func testInstancePropertyAvailability_bodyTracking() {
        class Implementation: Entity, HasBodyTracking { }
        _ = Implementation().bodyTracking
    }

}
