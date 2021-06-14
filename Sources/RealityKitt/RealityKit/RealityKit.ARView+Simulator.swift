#if targetEnvironment(simulator)

import ARKit
import RealityKit
import CoreGraphics

// MARK: - RealityKit.ARView + Initializer

@available(iOS 13.0, *)
extension RealityKit.ARView {

    public convenience init(frame frameRect: CoreGraphics.CGRect,
                            cameraMode: RealityKit.ARView.CameraMode,
                            automaticallyConfigureSession: Swift.Bool) {
        self.init(frame: frameRect)
    }

    public convenience init(frame: CoreGraphics.CGRect, cameraMode: RealityKit.ARView.CameraMode) {
        self.init(frame: frame)
    }
}

// MARK: - RealityKit.ARView.DebugOptions

@available(iOS 13.0, *)
extension RealityKit.ARView.DebugOptions {

    public static let showAnchorOrigins: Self = .init(rawValue: 1 << 3)

    public static let showAnchorGeometry: Self = .init(rawValue: 1 << 4)

    public static let showFeaturePoints: Self = .init(rawValue: 1 << 5)

    public static let showSceneUnderstanding: Self = .init(rawValue: 1 << 6)

}

// MARK: - RealityKit.ARView + Environment.Background

@available(iOS 13.0, *)
extension RealityKit.ARView.Environment.Background {

    public static func cameraFeed(exposureCompensation: Swift.Float = 0.0) -> RealityKit.ARView.Environment.Background {
        return .color(.black)
    }

}

// MARK: - RealityKit.ARview + Environment.SceneUnderstanding

@available(iOS 13.0, *)
extension RealityKit.ARView.Environment {

    @available(iOS 13.4, *)
    public struct SceneUnderstanding {

        public struct Options : Swift.OptionSet {

            // MARK: RawRepresentable

            public typealias RawValue = Swift.UInt32

            public let rawValue: RawValue

            public init(rawValue: RawValue) {
                self.rawValue = rawValue
            }

            // MARK: Options

            public static let occlusion: Self = .init(rawValue: 1 << 0)

            public static let receivesLighting: Self = .init(rawValue: 1 << 1)

            public static let collision: Self = .init(rawValue: 1 << 2)

            public static let physics: Self = [.init(rawValue: 1 << 3), .collision]

            public static let `default`: Self = .init(rawValue: 1 << 31)

        }

        public var options: RealityKit.ARView.Environment.SceneUnderstanding.Options {
            get { .init(rawValue: 0) }
            set { }
        }

    }

    @available(iOS 13.4, *)
    public var sceneUnderstanding: ARView.Environment.SceneUnderstanding {
        get { .init() }
        set { }
    }

}

// MARK: - RealityKit.ARView + RenderOptions

@available(iOS 13.0, *)
extension RealityKit.ARView {

    public struct RenderOptions : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.UInt

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: RenderOptions

        public static let disableCameraGrain: Self = .init(rawValue: 1 << 0)

        public static let disableAutomaticLighting: Self = .init(rawValue: 1 << 1)

        public static let disableGroundingShadows: Self = .init(rawValue: 1 << 2)

        public static let disableMotionBlur: Self = .init(rawValue: 1 << 3)

        public static let disableDepthOfField: Self = .init(rawValue: 1 << 4)

        public static let disableHDR: Self = .init(rawValue: 1 << 5)

        public static let disableFaceOcclusions: Self = .init(rawValue: 1 << 6)

        public static let disablePersonOcclusion: Self = .init(rawValue: 1 << 7)

        public static let disableAREnvironmentLighting: Self = .init(rawValue: 1 << 8)

        public static let disableFaceMesh: Self = .init(rawValue: 1 << 10)

    }

    public var renderOptions: RealityKit.ARView.RenderOptions {
        get { .init(rawValue: 0) }
        set { }
    }

}

// MARK: - RealityKit.ARView + Hit Testing

@available(iOS 13.0, *)
extension RealityKit.ARView {

    public func hitTest(_ point: CoreGraphics.CGPoint,
                        types: ARKit.ARHitTestResult.ResultType) -> [ARKit.ARHitTestResult] {
        return []
    }
}

// MARK: - RealityKit.ARView + Raycasting

@available(iOS 13.0, *)
extension RealityKit.ARView {

    public func makeRaycastQuery(from point: CoreGraphics.CGPoint,
                                 allowing target: ARKit.ARRaycastQuery.Target,
                                 alignment: ARKit.ARRaycastQuery.TargetAlignment) -> ARKit.ARRaycastQuery? {
        return nil
    }

    public func trackedRaycast(from point: CoreGraphics.CGPoint,
                               allowing target: ARKit.ARRaycastQuery.Target,
                               alignment: ARKit.ARRaycastQuery.TargetAlignment,
                               updateHandler: @escaping ([ARKit.ARRaycastResult]) -> Void) -> ARKit.ARTrackedRaycast? {
        return nil
    }

    public func raycast(from point: CoreGraphics.CGPoint,
                        allowing target: ARKit.ARRaycastQuery.Target,
                        alignment: ARKit.ARRaycastQuery.TargetAlignment) -> [ARKit.ARRaycastResult] {
        return []
    }

}

// MARK: - RealityKit.ARView + ARKit.ARSessionProviding

@available(iOS 13.0, *)
extension RealityKit.ARView : ARKit.ARSessionProviding {

    @objc dynamic public var session: ARKit.ARSession {
        get { ARKit.ARSession() }
        set { }
    }

    public enum CameraMode {
        case ar
        case nonAR
    }

    public var cameraMode: RealityKit.ARView.CameraMode {
        get { .nonAR }
        set { }
    }

    public var automaticallyConfigureSession: Swift.Bool {
        get { false }
        set { }
    }

}
@available(iOS 13.0, *)
extension RealityKit.ARView.CameraMode : Swift.Equatable { }

@available(iOS 13.0, *)
extension RealityKit.ARView.CameraMode : Swift.Hashable { }

// MARK: - RealityKit.ARView + EntityGestures

@available(iOS 13.0, *)
extension RealityKit.ARView {

    public struct EntityGestures : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.Int

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: EntityGestures

        public static let translation: Self = .init(rawValue: 1 << 0)

        public static let rotation: Self = .init(rawValue: 1 << 1)

        public static let scale: Self = .init(rawValue: 1 << 2)

        public static let all: Self = [.translation, .rotation, .scale]

    }

    public func installGestures(_ gestures: RealityKit.ARView.EntityGestures = .all,
                                for entity: RealityKit.HasCollision) -> [EntityGestureRecognizer] {
        return []
    }

}

#endif
