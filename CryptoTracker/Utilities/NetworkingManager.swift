//
//  NetworkingManager.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/19.
//

import Foundation
import Combine
class NetworkingManager {
    
    enum NetworkingError: LocalizedError{
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
                
            case .badURLResponse(url: let url):
               return "[🔥] Bad response from the URL: \(url)"
            case .unknown:
               return "[ ⚠️] unknown error occured"
            }
        }    }
    
    static func download(url: URL) -> AnyPublisher<Data, any Error> {
   

     return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap({ try handleURLResponse(output: $0, url: url)})
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL ) throws -> Data {
        guard let response = output.response as?  HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkingError.badURLResponse(url: url) }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>){
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
