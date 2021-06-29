#if targetEnvironment(simulator)

import ARKit
import RealityKit
import CoreGraphics

// MARK: - RealityKit.ARView + Initializer

@available(iOS 13.0, *)
extension RealityKit.ARView {

    /// Simulator interface mock of `ARView.init(frame:cameraMode:automaticallyConfigureSession:)`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3340492-init)
    public convenience init(frame frameRect: CoreGraphics.CGRect,
                            cameraMode: RealityKit.ARView.CameraMode,
                            automaticallyConfigureSession: Swift.Bool) {
        self.init(frame: frameRect)
    }

    /// Simulator interface mock of `ARView.init(frame:cameraMode:)`.
    ///
    /// The (real) initializer (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255311-init)
    public convenience init(frame: CoreGraphics.CGRect, cameraMode: RealityKit.ARView.CameraMode) {
        self.init(frame: frame)
    }
}

// MARK: - RealityKit.ARView.DebugOptions

@available(iOS 13.0, *)
extension RealityKit.ARView.DebugOptions {

    /// Simulator interface mock of `ARView.DebugOptions.showAnchorOrigins`.
    ///
    /// The (real) option isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/debugoptions/3255219-showanchororigins)
    public static let showAnchorOrigins: Self = .init(rawValue: 1 << 3)

    /// Simulator interface mock of `ARView.DebugOptions.showAnchorGeometry`.
    ///
    /// The (real) option isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/debugoptions/3255218-showanchorgeometry)
    public static let showAnchorGeometry: Self = .init(rawValue: 1 << 4)

    /// Simulator interface mock of `ARView.DebugOptions.showFeaturePoints`.
    ///
    /// The (real) option isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/debugoptions/3255220-showfeaturepoints)
    public static let showFeaturePoints: Self = .init(rawValue: 1 << 5)

    /// Simulator interface mock of `ARView.DebugOptions.showSceneUnderstanding`.
    ///
    /// The (real) option isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/debugoptions/3521397-showsceneunderstanding)
    public static let showSceneUnderstanding: Self = .init(rawValue: 1 << 6)

}

// MARK: - RealityKit.ARview.Environment + Background

@available(iOS 13.0, *)
extension RealityKit.ARView.Environment.Background {

    /// Simulator interface mock of `ARView.Environment.Background.cameraFeed(exposureCompensation:)`.
    ///
    /// The (real) type method (with this signature) isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/debugoptions/3521397-showsceneunderstanding)
    public static func cameraFeed(exposureCompensation: Swift.Float = 0.0) -> RealityKit.ARView.Environment.Background {
        return .color(.black)
    }

}

// MARK: - RealityKit.ARview.Environment + SceneUnderstanding

@available(iOS 13.0, *)
extension RealityKit.ARView.Environment {

    /// Simulator interface mock of `ARView.Environment.SceneUnderstanding`.
    ///
    /// The (real) value type isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding)
    @available(iOS 13.4, *)
    public struct SceneUnderstanding {

        /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options`.
        ///
        /// The (real) `OptionSet` isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options)
        public struct Options : Swift.OptionSet {

            // MARK: RawRepresentable

            public typealias RawValue = Swift.UInt32

            public let rawValue: RawValue

            public init(rawValue: RawValue) {
                self.rawValue = rawValue
            }

            // MARK: Options

            /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options.occlusion`.
            ///
            /// The (real) option isn't exposed to simulators by `RealityKit`.
            ///
            /// - SeeAlso:
            /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options/3521434-occlusion)
            public static let occlusion: Self = .init(rawValue: 1 << 0)

            /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options.receivesLighting`.
            ///
            /// The (real) option isn't exposed to simulators by `RealityKit`.
            ///
            /// - SeeAlso:
            /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options/3521437-receiveslighting)
            public static let receivesLighting: Self = .init(rawValue: 1 << 1)

            /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options.collision`.
            ///
            /// The (real) option isn't exposed to simulators by `RealityKit`.
            ///
            /// - SeeAlso:
            /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options/3521405-collision)
            public static let collision: Self = .init(rawValue: 1 << 2)

            /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options.physics`.
            ///
            /// The (real) option isn't exposed to simulators by `RealityKit`.
            ///
            /// - SeeAlso:
            /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options/3521435-physics)
            public static let physics: Self = [.init(rawValue: 1 << 3), .collision]

            /// Simulator interface mock of `ARView.Environment.SceneUnderstanding.Options.default`.
            ///
            /// The (real) option isn't exposed to simulators by `RealityKit`.
            ///
            /// - SeeAlso:
            /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/options/3539112-default)
            public static let `default`: Self = .init(rawValue: 1 << 31)

        }

        /// Simulator interface mock of the instance property `ARView.Environment.SceneUnderstanding.options`.
        ///
        /// The (real) instance property isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/sceneunderstanding/3521450-options)
        public var options: RealityKit.ARView.Environment.SceneUnderstanding.Options {
            get { .init(rawValue: 0) }
            set { }
        }

    }

    /// Simulator interface mock of the instance property `ARView.Environment.sceneUnderstanding`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/environment/3521451-sceneunderstanding)
    @available(iOS 13.4, *)
    public var sceneUnderstanding: ARView.Environment.SceneUnderstanding {
        get { .init() }
        set { }
    }

}

// MARK: - RealityKit.ARView + RenderOptions

@available(iOS 13.0, *)
extension RealityKit.ARView {

    /// Simulator interface mock of `ARView.RenderOptions`.
    ///
    /// The (real) `OptionSet` isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions)
    public struct RenderOptions : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.UInt

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: RenderOptions

        /// Simulator interface mock of `ARView.RenderOptions.disableCameraGrain`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255263-disablecameragrain)
        public static let disableCameraGrain: Self = .init(rawValue: 1 << 0)

        /// Simulator interface mock of `ARView.RenderOptions.disableAutomaticLighting`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255262-disableautomaticlighting)
        public static let disableAutomaticLighting: Self = .init(rawValue: 1 << 1)

        /// Simulator interface mock of `ARView.RenderOptions.disableGroundingShadows`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255266-disablegroundingshadows)
        public static let disableGroundingShadows: Self = .init(rawValue: 1 << 2)

        /// Simulator interface mock of `ARView.RenderOptions.disableMotionBlur`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255267-disablemotionblur)
        public static let disableMotionBlur: Self = .init(rawValue: 1 << 3)

        /// Simulator interface mock of `ARView.RenderOptions.disableDepthOfField`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255264-disabledepthoffield)
        public static let disableDepthOfField: Self = .init(rawValue: 1 << 4)

        /// Simulator interface mock of `ARView.RenderOptions.disableHDR`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3282004-disablehdr)
        public static let disableHDR: Self = .init(rawValue: 1 << 5)

        /// Simulator interface mock of `ARView.RenderOptions.disableFaceOcclusions`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3255265-disablefaceocclusions)
        public static let disableFaceOcclusions: Self = .init(rawValue: 1 << 6)

        /// Simulator interface mock of `ARView.RenderOptions.disablePersonOcclusion`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3282005-disablepersonocclusion)
        public static let disablePersonOcclusion: Self = .init(rawValue: 1 << 7)

        /// Simulator interface mock of `ARView.RenderOptions.disableAREnvironmentLighting`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3368184-disablearenvironmentlighting)
        public static let disableAREnvironmentLighting: Self = .init(rawValue: 1 << 8)

        /// Simulator interface mock of `ARView.RenderOptions.disableFaceMesh`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/renderoptions/3803191-disablefacemesh)
        @available(iOS 15.0, *)
        public static let disableFaceMesh: Self = .init(rawValue: 1 << 10)

    }

    /// Simulator interface mock of the instance property `ARView.renderOptions`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255316-renderoptions)
    public var renderOptions: RealityKit.ARView.RenderOptions {
        get { .init(rawValue: 0) }
        set { }
    }

}

// MARK: - RealityKit.ARView + Hit Testing

@available(iOS 13.0, *)
extension RealityKit.ARView {

    /// Simulator interface mock of the instance method `ARView.hitTest(_:types:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255310-hittest)
    public func hitTest(_ point: CoreGraphics.CGPoint,
                        types: ARKit.ARHitTestResult.ResultType) -> [ARKit.ARHitTestResult] {
        return []
    }

}

// MARK: - RealityKit.ARView + Raycasting

@available(iOS 13.0, *)
extension RealityKit.ARView {

    /// Simulator interface mock of the instance method `ARView.makeRaycastQuery(from:allowing:alignment:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255315-makeraycastquery)
    public func makeRaycastQuery(from point: CoreGraphics.CGPoint,
                                 allowing target: ARKit.ARRaycastQuery.Target,
                                 alignment: ARKit.ARRaycastQuery.TargetAlignment) -> ARKit.ARRaycastQuery? {
        return nil
    }

    /// Simulator interface mock of the instance method `ARView.trackedRaycast(from:allowing:alignment:updateHandler:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3282008-trackedraycast)
    public func trackedRaycast(from point: CoreGraphics.CGPoint,
                               allowing target: ARKit.ARRaycastQuery.Target,
                               alignment: ARKit.ARRaycastQuery.TargetAlignment,
                               updateHandler: @escaping ([ARKit.ARRaycastResult]) -> Void) -> ARKit.ARTrackedRaycast? {
        return nil
    }

    /// Simulator interface mock of the instance method `ARView.raycast(from:allowing:alignment:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3282007-raycast)
    public func raycast(from point: CoreGraphics.CGPoint,
                        allowing target: ARKit.ARRaycastQuery.Target,
                        alignment: ARKit.ARRaycastQuery.TargetAlignment) -> [ARKit.ARRaycastResult] {
        return []
    }

}

// MARK: - RealityKit.ARView + ARKit.ARSessionProviding

@available(iOS 13.0, *)
extension RealityKit.ARView : ARKit.ARSessionProviding {

    /// Simulator interface mock of the instance property `ARView.session`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255318-session)
    @objc dynamic public var session: ARKit.ARSession {
        get { ARKit.ARSession() }
        set { }
    }

    /// Simulator interface mock of the `ARView.CameraMode` enumeration.
    ///
    /// The (real) enumeration isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/cameramode)
    public enum CameraMode {
        /// Simulator interface mock of the enum case `ar` of the `ARView.CameraMode` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/cameramode/ar)
        case ar
        /// Simulator interface mock of the enum case `nonAR` of the `ARView.CameraMode` enumeration.
        ///
        /// The (real) enumeration case isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/cameramode/nonar)
        case nonAR
    }

    /// Simulator interface mock of the instance property `ARView.cameraMode`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3255305-cameramode)
    public var cameraMode: RealityKit.ARView.CameraMode {
        get { .nonAR }
        set { }
    }

    /// Simulator interface mock of the instance property `ARView.automaticallyConfigureSession`.
    ///
    /// The (real) instance property isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3340491-automaticallyconfiguresession)
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

    /// Simulator interface mock of `ARView.EntityGestures`.
    ///
    /// The (real) `OptionSet` isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/entitygestures)
    public struct EntityGestures : Swift.OptionSet {

        // MARK: RawRepresentable

        public typealias RawValue = Swift.Int

        public let rawValue: RawValue

        public init(rawValue: RawValue) {
            self.rawValue = rawValue
        }

        // MARK: EntityGestures

        /// Simulator interface mock of `ARView.EntityGestures.translation`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/entitygestures/3255251-translation)
        public static let translation: Self = .init(rawValue: 1 << 0)

        /// Simulator interface mock of `ARView.EntityGestures.rotation`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/entitygestures/3255246-rotation)
        public static let rotation: Self = .init(rawValue: 1 << 1)

        /// Simulator interface mock of `ARView.EntityGestures.scale`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/entitygestures/3255247-scale)
        public static let scale: Self = .init(rawValue: 1 << 2)

        /// Simulator interface mock of `ARView.EntityGestures.all`.
        ///
        /// The (real) option isn't exposed to simulators by `RealityKit`.
        ///
        /// - SeeAlso:
        /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/entitygestures/3255227-all)
        public static let all: Self = [.translation, .rotation, .scale]

    }

    /// Simulator interface mock of the instance method `ARView.installGestures(_:for:)`.
    ///
    /// The (real) instance method isn't exposed to simulators by `RealityKit`.
    ///
    /// - SeeAlso:
    /// [ Documentation](https://developer.apple.com/documentation/realitykit/arview/3368185-installgestures)
    public func installGestures(_ gestures: RealityKit.ARView.EntityGestures = .all,
                                for entity: RealityKit.HasCollision) -> [EntityGestureRecognizer] {
        return []
    }

}

#endif
