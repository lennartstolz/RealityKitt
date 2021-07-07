import XCTest

import RealityKit
import RealityKitt

// MARK: - RealityKit.HasSceneUnderstanding

@available(iOS 13.4, *)
final class HasSceneUnderstandingTests: XCTestCase {

    func testProtocolAvailability() {
        class Implementation: RealityKit.Entity, HasSceneUnderstanding { }
        _ = Implementation()
    }

    func testInstanceProperty_sceneUnderstanding() {
        class Implementation: RealityKit.Entity, HasSceneUnderstanding { }
        _ = Implementation().sceneUnderstanding

    }

}
