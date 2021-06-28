#if targetEnvironment(simulator)

import RealityKit

@available(iOS 13.4, *)
public protocol HasSceneUnderstanding : RealityKit.Entity { }

@available(iOS 13.4, *)
extension HasSceneUnderstanding {

    public var sceneUnderstanding: SceneUnderstandingComponent { SceneUnderstandingComponent() }

}

#endif
