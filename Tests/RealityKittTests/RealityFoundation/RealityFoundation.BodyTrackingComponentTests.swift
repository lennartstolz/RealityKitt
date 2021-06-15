import XCTest

import RealityKitt
import RealityKit

// MARK: - RealityKit.BodyTrackingComponent

@available(iOS 13.0, *)
final class RealityFoundationBodyTrackingComponentTests: XCTestCase {

    func testInitializerAvailability_init() {
        _ = { BodyTrackingComponent() }
        _ = { BodyTrackingComponent.init() }
    }

    func testInitializerAvailability_init_target() {
        _ = { BodyTrackingComponent(.any) }
        _ = { BodyTrackingComponent.init(.any) }
    }

    func testTypePropertyAvailability_target() {
        _ = { BodyTrackingComponent().target }
    }

    func testTypePropertyAvailability_isPaused() {
        _ = { BodyTrackingComponent().isPaused }
    }

}

// MARK: - RealityKit.BodyTrackingComponent + Target

@available(iOS 13.0, *)
final class RealityFoundationBodyTrackingComponentTargetTests: XCTestCase {

    func testEnumCaseAvailability_body() {
        _ = { BodyTrackingComponent.Target.body(identifier: UUID()) }
    }

    func testEnumCaseAvailability_any() {
        _ = { BodyTrackingComponent.Target.any }
    }

    func testProtocolConformance_Hashable() {
        _ = { BodyTrackingComponent.Target.any.hashValue }
    }

}
