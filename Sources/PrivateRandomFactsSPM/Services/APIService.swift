//
//  APIService.swift
//  PrivateRandomFactsSPM
//
//  Created by Pedro Torres on 14/11/25.
//

import Alamofire
import Foundation

public class RandomFactAPIService: APIServiceProtocol {
    
    private let session: Session
    private let randomFactsURL = "https://uselessfacts.jsph.pl/api/v2/facts/random"

    init(session: Session = AF) {
        self.session = session
    }

    func getRandomFact(completion: @escaping @Sendable (Fact?, Error?) -> Void) {
        session.request(randomFactsURL, method: .get)
            .validate()
            .responseDecodable(of: Fact.self) { response in
                switch response.result {
                case .success(let fact):
                    return completion(fact, nil)
                case .failure(let error):
                    return completion(nil, error)
                }
            }
    }
}
