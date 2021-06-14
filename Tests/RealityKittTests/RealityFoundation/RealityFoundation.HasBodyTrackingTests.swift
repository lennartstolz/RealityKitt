import XCTest

import RealityKitt
import RealityFoundation

@available(iOS 13.0, *)
final class RealityFoundationHasBodyTrackingTests: XCTestCase {

    func testProtocolAvailability() {
        class Implementation: Entity, HasBodyTracking { }
        _ = Implementation()
    }

    func testInstancePropertyAvailability_bodyTracking() {
        class Implementation: Entity, HasBodyTracking { }
        _ = Implementation().bodyTracking
    }

}
