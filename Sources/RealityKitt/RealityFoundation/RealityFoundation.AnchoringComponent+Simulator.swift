#if targetEnvironment(simulator)

import Foundation
import RealityKit

// MARK: - RealityKit.AnchoringComponent.Target

// FIXME - Doc - it's not the same ;)
@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    public static func anchor(identifier: Foundation.UUID) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    public static func plane(_ alignment: AnchoringComponent.Target.Alignment,
                             classification: AnchoringComponent.Target.Classification,
                             minimumBounds: Swift.SIMD2<Swift.Float>) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    public static func image(group: Swift.String, name: Swift.String) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    public static func object(group: Swift.String, name: Swift.String) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    public static var face: Self { .world(transform: matrix_identity_float4x4) }

    public static var body: Self { .world(transform: matrix_identity_float4x4) }

}

// MARK: - RealityKit.AnchoringComponent.Target + Alignment

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    public struct Alignment : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.UInt8

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: Alignments

        public static let horizontal: Self = .init(rawValue: 1 << 0)

        public static let vertical: Self = .init(rawValue: 1 << 1)

        public static let any: Self = .init(rawValue: .max)

    }

}

// MARK: - RealityKit.AnchoringComponent.Target + Classification

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    public struct Classification : Swift.OptionSet {

        // MARK: - RawRepresentable

        public typealias RawValue = Swift.UInt64

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: - Classifications

        public static let wall: Self = .init(rawValue: 1 << 0)

        public static let floor: Self = .init(rawValue: 1 << 1)

        public static let ceiling: Self = .init(rawValue: 1 << 2)

        public static let table: Self = .init(rawValue: 1 << 3)

        public static let seat: Self = .init(rawValue: 1 << 4)

        public static let any: Self = .init(rawValue: .max)

    }

}

#endif
