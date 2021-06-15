#if targetEnvironment(simulator)

import RealityKit

@available(iOS 13.0, *)
public protocol HasBodyTracking : RealityKit.HasTransform { }

@available(iOS 13.0, *)
extension HasBodyTracking {

    public var bodyTracking: BodyTrackingComponent { .init() }

}

#endif
