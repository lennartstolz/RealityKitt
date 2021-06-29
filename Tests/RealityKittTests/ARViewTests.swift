import XCTest
import ARKit
import RealityKit
import RealityKitt

// MARK: - RealityKit.ARView + Initializer

@available(iOS 13.0, *)
final class ARViewInitializerTests: XCTestCase {

    func testInitializerAvailability_init_frame_cameraMode_automaticallyConfigureSession() {
        _ = { RealityKit.ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true) }
    }

    func testInitializerAvailability_init_frame_cameraMode() {
        _ = { RealityKit.ARView(frame: .zero, cameraMode: .nonAR) }
    }

}

// MARK: - RealityKit.ARView.DebugOptions

@available(iOS 13.0, *)
final class ARViewDebugOptionTests: XCTestCase {

    typealias DebugOptions = RealityKit.ARView.DebugOptions

    func testOptionAvailability_showAnchorOrigins() {
        XCTAssertEqual(8, DebugOptions.showAnchorOrigins.rawValue)
    }

    func testOptionAvailability_showAnchorGeometry() {
        XCTAssertEqual(16, DebugOptions.showAnchorGeometry.rawValue)
    }

    func testOptionAvailability_showFeaturePoints() {
        XCTAssertEqual(32, DebugOptions.showFeaturePoints.rawValue)
    }

    @available(iOS 13.4, *)
    func testOptionAvailability_showSceneUnderstanding() {
        XCTAssertEqual(64, DebugOptions.showSceneUnderstanding.rawValue)
    }

}

// MARK: - RealityKit.ARView.Environment.Background

@available(iOS 13.0, *)
final class ARViewEnvironmentBackgroundTests: XCTestCase {

    typealias Background = RealityKit.ARView.Environment.Background

    func testTypeMethodAvailability_cameraFeed() {
        let _: Background = Background.cameraFeed()
        let _: Background = Background.cameraFeed(exposureCompensation: -1.0)
    }

}

// MARK: - RealityKit.ARView.Environment.SceneUnderstanding

@available(iOS 13.4, *)
final class ARViewEnvironmentTests: XCTestCase {

    typealias SceneUnderstanding = RealityKit.ARView.Environment.SceneUnderstanding

    func testInstancePropertyAvailability_sceneUnderstanding() {
        let _: () -> SceneUnderstanding = { RealityKit.ARView(frame: .zero).environment.sceneUnderstanding }
    }

    func testInstancePropertyMutability_sceneUnderstanding() {
        _ = {
            let sceneUnderstanding = RealityKit.ARView(frame: .zero).environment.sceneUnderstanding
            RealityKit.ARView(frame: .zero).environment.sceneUnderstanding = sceneUnderstanding
        }
    }

}

@available(iOS 13.4, *)
final class ARviewEnvironmentSceneUnderstandingTests: XCTestCase {

    typealias Options = RealityKit.ARView.Environment.SceneUnderstanding.Options

    func testInstancePropertyAvailability_options() {
        let _: () -> Options = { RealityKit.ARView(frame: .zero).environment.sceneUnderstanding.options }
    }

    func testInstancePropertyMutability_options() {
        _ = { RealityKit.ARView(frame: .zero).environment.sceneUnderstanding.options = .default }
    }

}

@available(iOS 13.4, *)
final class ARViewEnvironmentSceneUnderstandingOptionsTests: XCTestCase {

    typealias Options = RealityKit.ARView.Environment.SceneUnderstanding.Options

    func testOptionAvailability_occlusion() {
        XCTAssertEqual(1, Options.occlusion.rawValue)
    }

    func testOptionAvailability_receivesLighting() {
        XCTAssertEqual(2, Options.receivesLighting.rawValue)
    }

    func testOptionAvailability_collision() {
        XCTAssertEqual(4, Options.collision.rawValue)
    }

    func testOptionAvailability_physics() {
        XCTAssertEqual(12, Options.physics.rawValue)
    }

    func testOptionAvailability_default() {
        XCTAssertEqual(2147483648, Options.default.rawValue)
    }

}

// MARK: - RealityKit.ARView + RenderOptions

@available(iOS 13.0, *)
final class ARViewRenderOptionsTests: XCTestCase {

    typealias RenderOptions = RealityKit.ARView.RenderOptions

    // MARK: ARView

    func testInstancePropertyAvailability_renderOptions() {
        let _: () -> RenderOptions = { RealityKit.ARView(frame: .zero).renderOptions }
    }

    func testInstancePropertyMutability_renderOptions() {
        _ = { RealityKit.ARView(frame: .zero).renderOptions = [.disableHDR, .disableAREnvironmentLighting] }
    }

    // MARK: ARView.RenderOptions

    func testTypePropertyAvailability_disableCameraGrain() {
        XCTAssertEqual(1, RenderOptions.disableCameraGrain.rawValue)
    }

    func testTypePropertyAvailability_disableAutomaticLighting() {
        XCTAssertEqual(2, RenderOptions.disableAutomaticLighting.rawValue)
    }

    func testTypePropertyAvailability_disableGroundingShadows() {
        XCTAssertEqual(4, RenderOptions.disableGroundingShadows.rawValue)
    }

    func testTypePropertyAvailability_disableMotionBlur() {
        XCTAssertEqual(8, RenderOptions.disableMotionBlur.rawValue)
    }

    func testTypePropertyAvailability_disableDepthOfField() {
        XCTAssertEqual(16, RenderOptions.disableDepthOfField.rawValue)
    }

    func testTypePropertyAvailability_disableHDR() {
        XCTAssertEqual(32, RenderOptions.disableHDR.rawValue)
    }

    func testTypePropertyAvailability_disableFaceOcclusions() {
        XCTAssertEqual(64, RenderOptions.disableFaceOcclusions.rawValue)
    }

    func testTypePropertyAvailability_disablePersonOcclusion() {
        XCTAssertEqual(128, RenderOptions.disablePersonOcclusion.rawValue)
    }

    func testTypePropertyAvailability_disableAREnvironmentLighting() {
        XCTAssertEqual(256, RenderOptions.disableAREnvironmentLighting.rawValue)
    }

    @available(iOS 15.0, *)
    func testTypePropertyAvailability_disableFaceMesh() {
        XCTAssertEqual(1024, RenderOptions.disableFaceMesh.rawValue)
    }

}

// MARK: - RealityKit.ARView + Hit Testing

@available(iOS 13.0, *)
final class ARViewHitTestingTests: XCTestCase {

    func testInstanceMethodAvailability_hitTest() {
        let _: () -> [ARHitTestResult] = {
            RealityKit.ARView(frame: .zero).hitTest(.zero, types: .estimatedHorizontalPlane)
        }
    }

}

// MARK: - RealityKit.ARView + Raycasting

@available(iOS 13.0, *)
final class ARViewRaycastingTests: XCTestCase {

    func testInstanceMethodAvailability_makeRaycastQuery() {
        let _: () -> ARKit.ARRaycastQuery? = {
            let view = RealityKit.ARView(frame: .zero)
            return view.makeRaycastQuery(from: .zero, allowing: .estimatedPlane, alignment: .any)
        }
    }

    func testInstanceMethodPresence_trackedRaycast() {
        let _: () -> ARKit.ARTrackedRaycast? = {
            let view = RealityKit.ARView(frame: .zero)
            return view.trackedRaycast(from: .zero,
                                       allowing: .estimatedPlane,
                                       alignment: .any,
                                       updateHandler: { _ in })
        }
    }

    func testInstanceMethodPresence_raycast() {
        let _: () -> [ARKit.ARRaycastResult] = {
            let view = RealityKit.ARView(frame: .zero)
            return view.raycast(from: .zero, allowing: .estimatedPlane, alignment: .any)
        }
    }

}

// MARK: - RealityKit.ARView.CameraMode

@available(iOS 13.0, *)
final class ARViewCameraModeTests: XCTestCase {

    typealias CameraMode = RealityKit.ARView.CameraMode

    // MARK: RealityKit.ARView

    func testInstancePropertyAvailability_cameraMode() {
        let _: () -> CameraMode = { RealityKit.ARView(frame: .zero).cameraMode }
    }

    func testInstancePropertyMutability_cameraMode() {
        _ = { RealityKit.ARView(frame: .zero).cameraMode = .ar }
    }

    // MARK: RealityKit.ARView.CameraMode

    func testEnumCaseAvailability_ar() {
        _ = CameraMode.ar
    }

    func testEnumCaseAvailability_nonAR() {
        _ = CameraMode.nonAR
    }

}

// MARK: - RealityKit.ARView + ARKit.ARSession

@available(iOS 13.0, *)
final class ARViewSessionTests: XCTestCase {

    func testInstancePropertyAvailability_session() {
        let _: () -> ARKit.ARSession = { RealityKit.ARView(frame: .zero).session }
    }

    func testInstancePropertyMutability_session() {
        _ = { RealityKit.ARView(frame: .zero).session = ARKit.ARSession() }
    }

    func testInstancePropertyAvailability_automaticallyConfigureSession() {
        let _: () -> Swift.Bool = { RealityKit.ARView(frame: .zero).automaticallyConfigureSession }
    }

    func testInstancePropertyMutability_automaticallyConfigureSession() {
        _ = { RealityKit.ARView(frame: .zero).automaticallyConfigureSession = true }
    }

    func testProtocolConformance_ARSessionProviding() {
        let _ : () -> ARKit.ARSessionProviding = { ARView(frame: .zero) }
    }

}

// MARK: - RealityKit.ARView + EntityGestures

@available(iOS 13.0, *)
final class ARViewEntityGesturesTests: XCTestCase {

    typealias EntityGestures = RealityKit.ARView.EntityGestures

    func testOptionAvailability_translation() {
        XCTAssertEqual(1, EntityGestures.translation.rawValue)
    }

    func testOptionAvailability_rotation() {
        XCTAssertEqual(2, EntityGestures.rotation.rawValue)
    }

    func testOptionAvailability_scale() {
        XCTAssertEqual(4, EntityGestures.scale.rawValue)
    }

    func testOptionAvailability_all() {
        XCTAssertEqual(7, EntityGestures.all.rawValue)
    }

    func testInstanceMethodAvailability_installGestures() {
        _ = { ARView(frame: .zero).installGestures(for: ModelEntity()) }
        _ = { ARView(frame: .zero).installGestures(.all, for: ModelEntity()) }
    }

}
