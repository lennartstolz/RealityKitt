#if targetEnvironment(simulator)

import Foundation
import RealityKit

@available(iOS 13.0, *)
extension RealityKit.Entity {

    /// Simulator interface mock of `Entity.loadBodyTracked(named:in:)`.
    ///
    /// The (real) type method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entity/3255555-loadbodytracked)
    public static func loadBodyTracked(named name: Swift.String,
                                       in bundle: Foundation.Bundle? = nil) throws -> BodyTrackedEntity {
        BodyTrackedEntity()
    }

    /// Simulator interface mock of `Entity.loadBodyTrackedAsync(named:in:)`.
    ///
    /// The (real) type method isn't exposed to simulators by `RealityKit`.
    ///
    /// - Warning: Calling this method will throw a `fatalError`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entity/3255557-loadbodytrackedasync)
    public static func loadBodyTrackedAsync(named name: Swift.String,
                                            in bundle: Foundation.Bundle? = nil)
    -> RealityKit.LoadRequest<BodyTrackedEntity> {
        // RealityKit.LoadRequest cannot be constructed because it has no accessible initializers.
        // Because of that we cannot return a failing load request. Instead, a `fatalError` is thrown.
        fatalError("loadBodyTrackedAsync(named:in:) has not been implemented")
    }

    /// Simulator interface mock of `Entity.loadBodyTracked(contentsOf:withName:)`.
    ///
    /// The (real) type method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entity/3255554-loadbodytracked)
    public static func loadBodyTracked(contentsOf url: Foundation.URL,
                                       withName resourceName: Swift.String? = nil) throws -> BodyTrackedEntity {
        BodyTrackedEntity()
    }

    /// Simulator interface mock of `Entity.loadBodyTrackedAsync(contentsOf:withName:)`.
    ///
    /// The (real) type method isn't exposed to simulators by `RealityKit`.
    ///
    /// - Warning: Calling this method will throw a `fatalError`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/entity/3255556-loadbodytrackedasync)
    public static func loadBodyTrackedAsync(contentsOf url: Foundation.URL,
                                            withName resourceName: Swift.String? = nil)
    -> RealityKit.LoadRequest<BodyTrackedEntity> {
        // RealityKit.LoadRequest cannot be constructed because it has no accessible initializers.
        // Because of that we cannot return a failing load request. Instead, a `fatalError` is thrown.
        fatalError("loadBodyTrackedAsync(contentsOf:withName:) has not been implemented")
    }

}

#endif
