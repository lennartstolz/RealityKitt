#if targetEnvironment(simulator)

import RealityFoundation

@available(iOS 13.0, *)
public protocol HasBodyTracking : RealityFoundation.HasTransform { }

@available(iOS 13.0, *)
extension HasBodyTracking {

    public var bodyTracking: BodyTrackingComponent { .init() }

}

#endif
