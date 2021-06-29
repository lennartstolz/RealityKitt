#if targetEnvironment(simulator)

import RealityKit

/// Simulator interface mock of `HasSceneUnderstanding`.
///
/// The (real) protocol isn't exposed to simulators by `RealityKit`.
///
/// Unfortunately, it's impossible to add elements at the root level of the `RealityKit` namespace. In most use cases,
/// this interface is indistinguishable from the "original" interface, but you cannot prefix or import this protocol
/// with `RealityKit.HasSceneUnderstanding`.
///
/// - SeeAlso:
/// [ Documentation](https://developer.apple.com/documentation/realitykit/hassceneunderstanding)
@available(iOS 13.4, *)
public protocol HasSceneUnderstanding : RealityKit.Entity { }

@available(iOS 13.4, *)
extension HasSceneUnderstanding {

    /// Simulator interface mock of the instance property `HasSceneUnderstanding.sceneUnderstanding`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/hassceneunderstanding/3521453-sceneunderstanding)
    public var sceneUnderstanding: SceneUnderstandingComponent { SceneUnderstandingComponent() }

}

#endif
