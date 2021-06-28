#if targetEnvironment(simulator)

import RealityKit

// MARK: - RealityKit.AnchorEntity

@available(iOS 13.0, *)
extension RealityKit.AnchorEntity {

    public convenience init(plane: RealityKit.AnchoringComponent.Target.Alignment,
                            classification: RealityKit.AnchoringComponent.Target.Classification = .any,
                            minimumBounds: Swift.SIMD2<Swift.Float> = [0, 0]) {
        self.init(world: matrix_identity_float4x4)
    }

}

#endif
