#if targetEnvironment(simulator)

import ARKit
import Foundation
import RealityKit

// MARK: - RealityKit.AnchoringComponent + Initializer

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent {

    /// Simulator interface mock of `AnchoringComponent.init(_:)`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/3255404-init)
    public init(_ anchor: ARKit.ARAnchor) {
        self.init(.anchor(identifier: anchor.identifier))
    }

}

// MARK: - RealityKit.AnchoringComponent + Target

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    /// Simulator interface mock of `AnchoringComponent.Target.anchor(identifier:)`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type method. In most use cases, the interface is indistinguishable from
    /// the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/anchor_identifier)
    public static func anchor(identifier: Foundation.UUID) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchoringComponent.Target.plane(_:classification:minimumBounds:)`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type method. In most use cases, the interface is indistinguishable from
    /// the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/plane_classification_minimumbounds)
    public static func plane(_ alignment: AnchoringComponent.Target.Alignment,
                             classification: AnchoringComponent.Target.Classification,
                             minimumBounds: Swift.SIMD2<Swift.Float>) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchoringComponent.Target.image(group:name:)`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type method. In most use cases, the interface is indistinguishable from
    /// the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/image_group_name)
    public static func image(group: Swift.String, name: Swift.String) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchoringComponent.Target.object(group:name:)`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type method. In most use cases, the interface is indistinguishable from
    /// the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/object_group_name)
    public static func object(group: Swift.String, name: Swift.String) -> Self {
        .world(transform: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchoringComponent.Target.face`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type property. In most use cases, the interface is indistinguishable
    /// from the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/face)
    public static var face: Self { .world(transform: matrix_identity_float4x4) }

    /// Simulator interface mock of `AnchoringComponent.Target.body`.
    ///
    /// This case of the `AnchoringComponent.Target` enum is not exposed to simulators.
    /// Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum").
    ///
    /// That's why we mocked this enum case as a type property. In most use cases, the interface is indistinguishable
    /// from the "original" interface, beside enum specific features (e.g., iterating over all cases).
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/body)
    public static var body: Self { .world(transform: matrix_identity_float4x4) }

}

// MARK: - RealityKit.AnchoringComponent.Target + Alignment

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    /// Simulator interface mock of `AnchoringComponent.Target.Alignment`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/alignment)
    public struct Alignment : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.UInt8

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: Alignments

        /// Simulator interface mock of `AnchoringComponent.Target.Alignment.horizontal`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/alignment/3255343-horizontal)
        public static let horizontal: Self = .init(rawValue: 1 << 0)

        /// Simulator interface mock of `AnchoringComponent.Target.Alignment.vertical`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/alignment/3255363-vertical)
        public static let vertical: Self = .init(rawValue: 1 << 1)

        /// Simulator interface mock of `AnchoringComponent.Target.Alignment.any`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/alignment/3255338-any)
        public static let any: Self = .init(rawValue: .max)

    }

}

// MARK: - RealityKit.AnchoringComponent.Target + Classification

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent.Target {

    /// Simulator interface mock of `AnchoringComponent.Target.Classification`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification)
    public struct Classification : Swift.OptionSet {

        // MARK: - RawRepresentable

        public typealias RawValue = Swift.UInt64

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: - Classifications

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.wall`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255397-wall)
        public static let wall: Self = .init(rawValue: 1 << 0)

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.floor`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255372-floor)
        public static let floor: Self = .init(rawValue: 1 << 1)

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.ceiling`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255370-ceiling)
        public static let ceiling: Self = .init(rawValue: 1 << 2)

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.table`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255394-table)
        public static let table: Self = .init(rawValue: 1 << 3)

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.seat`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255390-seat)
        public static let seat: Self = .init(rawValue: 1 << 4)

        /// Simulator interface mock of `AnchoringComponent.Target.Classification.any`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchoringcomponent/target/classification/3255369-any)
        public static let any: Self = .init(rawValue: .max)

    }

}

#endif
