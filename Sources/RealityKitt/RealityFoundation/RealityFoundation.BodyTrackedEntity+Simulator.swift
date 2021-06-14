#if targetEnvironment(simulator)

import RealityFoundation

@available(iOS 13.0, *)
public class BodyTrackedEntity : RealityFoundation.Entity, HasBodyTracking, RealityFoundation.HasModel { }

#endif
