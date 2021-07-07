import XCTest

import ARKit
import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class AnchoringComponentTests: XCTestCase {

    func testInitializerAvailability_init_anchor() {
        _ = RealityKit.AnchoringComponent(ARKit.ARAnchor(transform: matrix_identity_float4x4))
        _ = RealityKit.AnchoringComponent.init(ARKit.ARAnchor(transform: matrix_identity_float4x4))
    }

}

@available(iOS 13.0, *)
final class AnchoringComponentTargetTests: XCTestCase {

    typealias Target = RealityKit.AnchoringComponent.Target

    func testEnumCaseAvailability_anchor() {
        _ = Target.anchor(identifier: UUID())
    }

    func testEnumCaseAvailability_plane() {
        _ = Target.plane(.any, classification: .any, minimumBounds: [0, 0])
    }

    func testEnumCaseAvailability_image() {
        _ = Target.image(group: "🎨", name: "👨‍🎨")
    }

    func testEnumCaseAvailability_group() {
        _ = Target.image(group: "👫", name: "🤷‍♂️")
    }

    func testEnumCaseAvailability_face() {
        _ = Target.face
    }

    func testEnumCase_body() {
        _ = Target.body
    }

}

@available(iOS 13.0, *)
final class AnchoringComponentTargetAlignmentTests: XCTestCase {

    typealias Alignment = RealityKit.AnchoringComponent.Target.Alignment

    func testOptionAvailability_horizontal() {
        XCTAssertEqual(1, Alignment.horizontal.rawValue)
    }

    func testOptionAvailability_vertical() {
        XCTAssertEqual(2, Alignment.vertical.rawValue)
    }

    func testOptionAvailability_any() {
        XCTAssertEqual(255, Alignment.any.rawValue)
    }

}

@available(iOS 13.0, *)
final class AnchoringComponentTargetClassificationTests: XCTestCase {

    typealias Classification = RealityKit.AnchoringComponent.Target.Classification

    func testOptionAvailability_wall() {
        XCTAssertEqual(1, Classification.wall.rawValue)
    }

    func testOptionAvailability_floor() {
        XCTAssertEqual(2, Classification.floor.rawValue)
    }

    func testOptionAvailability_ceiling() {
        XCTAssertEqual(4, Classification.ceiling.rawValue)
    }

    func testOptionAvailability_table() {
        XCTAssertEqual(8, Classification.table.rawValue)
    }

    func testOptionAvailability_seat() {
        XCTAssertEqual(16, Classification.seat.rawValue)
    }

    func testOptionAvailability_any() {
        XCTAssertEqual(18446744073709551615, Classification.any.rawValue)
    }

}
