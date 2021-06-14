#if targetEnvironment(simulator)

import RealityFoundation

@available(iOS 13.4, *)
public protocol HasSceneUnderstanding : RealityFoundation.Entity { }

@available(iOS 13.4, *)
extension HasSceneUnderstanding {

    public var sceneUnderstanding: SceneUnderstandingComponent { SceneUnderstandingComponent() }

}

#endif
