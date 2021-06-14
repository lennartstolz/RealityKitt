#if targetEnvironment(simulator)

import ARKit
import RealityFoundation

@available(iOS 13.0, *)
extension RealityFoundation.AnchoringComponent {

    public init(_ anchor: ARKit.ARAnchor) {
        self.init(.anchor(identifier: anchor.identifier))
    }

}

#endif
