#if targetEnvironment(simulator)

import ARKit
import RealityKit

@available(iOS 13.0, *)
extension RealityKit.AnchorEntity {

    /// Simulator interface mock of `AnchorEntity.init(plane:classification:minimumBounds:)`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchorentity/3255326-init)
    public convenience init(plane: RealityKit.AnchoringComponent.Target.Alignment,
                            classification: RealityKit.AnchoringComponent.Target.Classification = .any,
                            minimumBounds: Swift.SIMD2<Swift.Float> = [0, 0]) {
        self.init(world: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchorEntity.init(anchor:)`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchorentity/3255324-init)
    public convenience init(anchor: ARKit.ARAnchor) {
        self.init(world: matrix_identity_float4x4)
    }

    /// Simulator interface mock of `AnchorEntity.init(raycastResult:)`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/anchorentity/3282009-init)
    public convenience init(raycastResult: ARKit.ARRaycastResult) {
        self.init(world: matrix_identity_float4x4)
    }

}

#endif
