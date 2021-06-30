# RealityKitt

This library provides (mock) interfaces for all the "things" which aren't exposed to simulators by `RealityKit`.


[![build](https://github.com/lennartstolz/RealityKitt/actions/workflows/build.yml/badge.svg)](https://github.com/lennartstolz/RealityKitt/actions/workflows/build.yml)
[![lint](https://github.com/lennartstolz/RealityKitt/actions/workflows/lint.yml/badge.svg)](https://github.com/lennartstolz/RealityKitt/actions/workflows/lint.yml)
[![test](https://github.com/lennartstolz/RealityKitt/actions/workflows/test.yml/badge.svg)](https://github.com/lennartstolz/RealityKitt/actions/workflows/test.yml)

## Why?

The `RealityKit` framework exposes different interfaces for simulator targets than for real devices.
Because of that, your (valid) codebase won't compile if you switch to a simulator in Xcode.

This library is **not** providing the "real" functionality of those "things".
It solely makes your codebase compile if you target a simulator.

Among other things:

- CI/CD workflows usually rely on simulator builds and tests.
- Non-AR-related code can be developed in the same codebase on simulators without connecting a physical device to your Mac.

## Usage

1) `import RealityKitt` next to the import statement of `RealityKit`.
2) You are done.

`RealityKitt` isn't exposing a single line of code for real device targets, so it is safe to use the following imports:

```swift
import RealityKit
import RealityKitt
```

But you can also use the `targetEnvironment` compilation condition if you like to:

```swift
import RealityKit
#if targetEnvironment(simulator)
import RealityKitt
#endif
```

## Trivia

The name of this library is a mashup of the `RealityKit` framework and the dated German term  `Kitt` (≈ "putty") often used for (temporary) fixes in domestic construction.

## Known Limitations

This library aims to provide indistinguishable interfaces for all "things" which aren't exposed to simulators by `RealityKit`. Unfortunately, this isn't possible in all scenarios. The limitations can be classified broadly into three groups:

- Type methods/properties instead of missing enum cases
- Exposed in the wrong namespace (`RealityKitt` instead of `RealityKit`).
- Throwing methods (because the return types initializer isn't accessible).

### Type methods/properties instead of missing enum cases

For simulators the `RealityKit.AnchoringComponent.Target` enumeration lacks six enum cases. Swift doesn't allow to extend an enum ("enum 'case' is not allowed outside of an enum"). This library mocks the interfaces of those cases as type methods/properties.

Most likely, this won't cause issues in the majority of codebases using `RealityKitt`. This enumeration is mainly used to create an anchor and not to iterate over different types of anchors.

### Exposed in the wrong namespace

`RealityKit` lacks several classes, protocols, and structs on the "root level" for simulators. Unfortunately, they cannot be added to the `RealityKit` namespace using extensions. That's why they are exposed in the `RealityKitt` namespace instead.

Most likely, this won't cause issues in the majority of codebases using `RealityKitt`.

```swift
// Works
import RealityKit
import RealityKitt
let bodyTrackingComponent = BodyTrackingComponent()
```

```swift
// Doesn't work
import struct RealityKit.BodyTrackingComponent
let bodyTrackingComponent = RealityKit.BodyTrackingComponent()
```
### Throwing methods

The interfaces to load a `BodyTrackedEntity` asynchronously, are returning a `LoadRequest` object. Sadly, this object cannot be created outside of the `RealityKit` framework, as it doesn't expose an accessible initializer. Because of that, the mentioned methods throw a `fatalError`.

## Tests

Don't look too closely at the tests of this library. 😉

Their primary purpose is to check the accessibility of the added interfaces. The test cases themselves mainly test stupid things.

## Last but not least

Nothing could be further from my mind than mocking/blaming the `RealityKit` team by creating this library. Thanks for your outstanding work providing such an incredible framework. 
