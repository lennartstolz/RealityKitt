import XCTest

import RealityFoundation

// MARK: - RealityFoundation.AnchoringComponent.Target

@available(iOS 13.0, *)
final class RealityFoundationAnchoringComponentTargetTests: XCTestCase {

    typealias Target = RealityFoundation.AnchoringComponent.Target

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

// MARK: - RealityFoundation.AnchoringComponent.Target.Alignment

@available(iOS 13.0, *)
final class RealityFoundationAnchoringComponentTargetAlignmentTests: XCTestCase {

    typealias Alignment = RealityFoundation.AnchoringComponent.Target.Alignment

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

// MARK: - RealityFoundation.AnchoringComponent.Target.Classification

@available(iOS 13.0, *)
final class RealityFoundationAnchoringComponentTargetClassificationTests: XCTestCase {

    typealias Classification = RealityFoundation.AnchoringComponent.Target.Classification

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
