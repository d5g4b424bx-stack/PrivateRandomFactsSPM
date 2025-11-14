# RandomFactKit

## Features

- Fetches a random fact from the uselessFacts API and returns a Swift Codable Fact object

- Includes unit tests demonstrating asynchronous request handling

---

## Installing

Add `https://github.com/d5g4b424bx-stack/PrivateRandomFactsSPM.git` to your Swift Package Manager dependencies

## Usage

```swift
//Initialize your APIService
let service = PrivateRandomFactsSPM.RandomFactAPIService()

//Make the request with `getRandomFact`, passing your completion closure as the parameter
test.getRandomFact(completion: { fact, error in
    //Run your code here
    print(fact)
})
```


## Models

### `Fact`
Represents a single fact returned by the API:

```swift
struct Fact: Codable {
    let id: String
    let text: String
}
```
