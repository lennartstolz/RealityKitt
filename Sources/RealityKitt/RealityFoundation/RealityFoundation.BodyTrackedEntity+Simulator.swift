#if targetEnvironment(simulator)

import RealityKit

@available(iOS 13.0, *)
public class BodyTrackedEntity : RealityKit.Entity, HasBodyTracking, RealityKit.HasModel { }

#endif
