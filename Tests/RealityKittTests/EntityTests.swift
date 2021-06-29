import XCTest

import RealityKit
import RealityKitt

@available(iOS 13.0, *)
final class EntityTests: XCTestCase {

    func testTypeMethodAvailability_loadBodyTracked_named_in() throws {
        let _: () throws -> BodyTrackedEntity = { try Entity.loadBodyTracked(named: "💃") }
        let _: () throws -> BodyTrackedEntity = { try Entity.loadBodyTracked(named: "🕺", in: .main) }
    }

    func testTypeMethodAvailability_loadBodyTrackedAsync_named_in() {
        _ = {
            _ = BodyTrackedEntity
                .loadBodyTrackedAsync(named: "🕺")
                .sink(receiveCompletion: { _ in }, receiveValue: { (_: BodyTrackedEntity) in })
        }
        _ = {
            _ = BodyTrackedEntity
                .loadBodyTrackedAsync(named: "💃", in: .main)
                .sink(receiveCompletion: { _ in }, receiveValue: { (_: BodyTrackedEntity) in })
        }
    }

    func testTypeMethodAvailability_loadBodyTracked_contentsOf_withName() throws {
        let url = URL(fileURLWithPath: "/tmp/model.usdz")
        let _: () throws -> BodyTrackedEntity = { try Entity.loadBodyTracked(contentsOf: url) }
        let _: () throws -> BodyTrackedEntity = { try Entity.loadBodyTracked(contentsOf: url, withName: "💃") }
    }

    func testTypeMethodAvailability_loadBodyTrackedAsync_contentsOf_withName() {
        _ = {
            let url = URL(fileURLWithPath: "/tmp/model.usdz")
            _ = BodyTrackedEntity
                .loadBodyTrackedAsync(contentsOf: url)
                .sink(receiveCompletion: { _ in }, receiveValue: { (_: BodyTrackedEntity) in })
        }
        _ = {
            let url = URL(fileURLWithPath: "/tmp/model.usdz")
            _ = BodyTrackedEntity
                .loadBodyTrackedAsync(contentsOf: url, withName: "💃")
                .sink(receiveCompletion: { _ in }, receiveValue: { (_: BodyTrackedEntity) in })
        }
    }

}
