//
//  APIClientProtocol.swift
//  PrivateRandomFactsSPM
//
//  Created by Pedro Torres on 14/11/25.
//

import Foundation
import Alamofire

protocol APIClientProtocol {
    func get<T: Decodable>(completion: @escaping (Result<T, AFError>) -> Void)
}
