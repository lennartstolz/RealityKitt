#if targetEnvironment(simulator)

import ARKit
import RealityKit

@available(iOS 13.0, *)
extension RealityKit.AnchoringComponent {

    public init(_ anchor: ARKit.ARAnchor) {
        self.init(.anchor(identifier: anchor.identifier))
    }

}

#endif
