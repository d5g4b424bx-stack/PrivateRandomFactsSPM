//
//  PrivateRandomFactsSPMTests.swift
//  PrivateRandomFactsSPMTests
//
//  Created by Pedro Torres on 14/11/25.
//

@testable import PrivateRandomFactsSPM
import Alamofire
import XCTest

class PrivateRandomFactsSPMTests: XCTestCase {

    func testGetRandomFactWithAlamofire() throws {
        let apiService: APIServiceProtocol = RandomFactAPIService(session: AF)

        let expectation = XCTestExpectation(description: "Network expectation")

        apiService.getRandomFact { fact, error in
            if let fact {
                print(fact.text)
            } else {
                print(error?.localizedDescription ?? "")
            }
            
            XCTAssert(fact?.text.count ?? 0 > 0)
            XCTAssert(error == nil)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }

}
