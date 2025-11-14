# RandomFactKit

## Features

- Fetches a random fact from the uselessFacts API and returns a Swift Codable Fact object

- Includes unit tests demonstrating asynchronous request handling

---

## Models

### `Fact`
Represents a single fact returned by the API:

```swift
struct Fact: Codable {
    let id: String
    let text: String
}
