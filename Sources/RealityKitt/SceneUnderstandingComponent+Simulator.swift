#if targetEnvironment(simulator)

import RealityKit

/// Simulator interface mock of `SceneUnderstandingComponent`.
///
/// The (real) component isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this struct with
/// `RealityKit.SceneUnderstandingComponent`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent)
@available(iOS 13.4, *)
public struct SceneUnderstandingComponent : RealityKit.Component {

    /// Simulator interface mock of the `SceneUnderstandingComponent.EntityType` enumeration.
    ///
    /// The (real) enumeration isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/entitytype)
    @available(iOS 15.0, *)
    public enum EntityType : Swift.Hashable {
        /// Simulator interface mock of the enum case `meshChunk` of the `SceneUnderstandingComponent.EntityType` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/entitytype/meshchunk)
        case meshChunk
        /// Simulator interface mock of the enum case `face` of the `SceneUnderstandingComponent.EntityType` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/entitytype/face)
        case face
    }

    /// Simulator interface mock of the instance property `SceneUnderstandingComponent.entityType`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/3803188-entitytype)
    @available(iOS 15.0, *)
    public var entityType: SceneUnderstandingComponent.EntityType? {
        get { _entityType as? SceneUnderstandingComponent.EntityType }
        set { _entityType = newValue }
    }

    /// Type erased storage of the `entityType` property. This storage is needed to limit the access to `entity` to
    /// iOS 15.0 + while the component itself is accessible from iOS 13.4+.
    private var _entityType: Any?

    /// Simulator interface mock of `SceneUnderstandingComponent.init()`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/3803189-init)
    @available(iOS 15.0, *)
    public init() {
        self._entityType = nil
    }

    /// Simulator interface mock of `SceneUnderstandingComponent.init(entityType:)`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/sceneunderstandingcomponent/3803190-init)
    @available(iOS 15.0, *)
    public init(entityType: SceneUnderstandingComponent.EntityType?) {
        self._entityType = entityType
    }

    /// Initializer to construct instances of `SceneUnderstandingComponent` for iOS 13.4+.
    ///
    /// `HasSceneUnderstanding.sceneUnderstanding` provides a `SceneUnderstandingComponent` for iOS 13.4+, although
    /// there is no initializer available prior to iOS 15.0. To be able to expose this property, we introduced this
    /// (invisble) fake initializer mocking the `SceneUnderstandingComponent.init()` signature.
    init(_: Void = ()) {
        self._entityType = nil
    }

}

#endif
