//
//  APIServiceProtocol.swift
//  PrivateRandomFactsSPM
//
//  Created by Pedro Torres on 14/11/25.
//

import Foundation

protocol APIServiceProtocol {
    func getRandomFact(completion: @escaping @Sendable (Fact?, Error?) -> Void)
}
