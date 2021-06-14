#if targetEnvironment(simulator)

import RealityFoundation

// MARK: - RealityFoundation.AnchorEntity

@available(iOS 13.0, *)
extension RealityFoundation.AnchorEntity {

    public convenience init(plane: RealityFoundation.AnchoringComponent.Target.Alignment,
                            classification: RealityFoundation.AnchoringComponent.Target.Classification = .any,
                            minimumBounds: Swift.SIMD2<Swift.Float> = [0, 0]) {
        self.init(world: matrix_identity_float4x4)
    }

}

#endif
