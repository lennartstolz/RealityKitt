#if targetEnvironment(simulator)

import Foundation
import RealityKit

@available(iOS 13.0, *)
extension RealityKit.Entity {

    public static func loadBodyTracked(named name: Swift.String,
                                       in bundle: Foundation.Bundle? = nil) throws -> BodyTrackedEntity {
        BodyTrackedEntity()
    }

    public static func loadBodyTrackedAsync(named name: Swift.String,
                                            in bundle: Foundation.Bundle? = nil)
    -> RealityKit.LoadRequest<BodyTrackedEntity> {
        // RealityKit.LoadRequest cannot be constructed because it has no accessible initializers.
        // Because of that we cannot return a failing load request. Instead, a `fatalError` is thrown.
        fatalError("loadBodyTrackedAsync(named:in:) has not been implemented")
    }

    public static func loadBodyTracked(contentsOf url: Foundation.URL,
                                       withName resourceName: Swift.String? = nil) throws -> BodyTrackedEntity {
        BodyTrackedEntity()
    }

    public static func loadBodyTrackedAsync(contentsOf url: Foundation.URL,
                                            withName resourceName: Swift.String? = nil)
    -> RealityKit.LoadRequest<BodyTrackedEntity> {
        // RealityKit.LoadRequest cannot be constructed because it has no accessible initializers.
        // Because of that we cannot return a failing load request. Instead, a `fatalError` is thrown.
        fatalError("loadBodyTrackedAsync(contentsOf:withName:) has not been implemented")
    }

}

#endif
