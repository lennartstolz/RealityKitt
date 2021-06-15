#if targetEnvironment(simulator)

import RealityKit

@available(iOS 13.4, *)
public struct SceneUnderstandingComponent : RealityKit.Component {

    public enum EntityType : Swift.Hashable {
        case meshChunk
        case face
    }

    public var entityType: SceneUnderstandingComponent.EntityType?

    public init() {
        self.entityType = nil
    }

    public init(entityType :SceneUnderstandingComponent.EntityType?) {
        self.entityType = entityType
    }

}

#endif
