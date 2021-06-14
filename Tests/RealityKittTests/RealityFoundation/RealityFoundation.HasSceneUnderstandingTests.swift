import XCTest

import RealityKitt
import RealityFoundation

// MARK: - RealityFoundation.HasSceneUnderstanding

@available(iOS 13.4, *)
final class RealityFoundationHasSceneUnderstandingTests: XCTestCase {

    func testProtocolAvailability() {
        class Implementation: RealityFoundation.Entity, HasSceneUnderstanding { }
        _ = Implementation()
    }

    func testInstanceProperty_sceneUnderstanding() {
        class Implementation: RealityFoundation.Entity, HasSceneUnderstanding { }
        _ = Implementation().sceneUnderstanding

    }

}
