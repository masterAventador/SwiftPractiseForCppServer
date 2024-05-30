//
//  XYHttpModule.swift
//  Alamofire
//
//  Created by Aventador on 2024/5/27.
//

import UIKit
import HttpPBModule
import SwiftProtobuf
import Alamofire


public struct XYHttpModule {
    static let url = URL(string: "http://8.140.207.230:8080")!
    
    //MARK: RequestSerializer
    struct ProtobufRequestSerializer<T: Message>: URLRequestConvertible {
        
        let message: T
        
        func asURLRequest() throws -> URLRequest {
            var request = URLRequest(url: url)
            request.setValue("application/x-protobuf", forHTTPHeaderField: "Content-Type")
            request.httpMethod = HTTPMethod.post.rawValue
            request.httpBody = try? message.serializedData()
            return request
        }
    }
    
    //MARK: ResponseSerializer
    struct ProtobufResponseSerializer<T: Message>: DataResponseSerializerProtocol {
        typealias SerializedObject = T
        func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: (any Error)?) throws -> SerializedObject {
            guard error == nil else { throw error! }
            guard let data else { throw AFError.responseSerializationFailed(reason: .inputDataNilOrZeroLength) }
            return try T(serializedData: data)
        }
    }
    
    
    static public func post<T: Message, U: Message>(_ requestMessage: T, responseType: U.Type, completion: @escaping(Result<U, AFError>) -> Void) {
        let requestSerializer = ProtobufRequestSerializer(message: requestMessage)
        let responseSerializer = ProtobufResponseSerializer<U>()
        AF.request(requestSerializer).response(responseSerializer: responseSerializer) { response in
            completion(response.result)
        }
    }
}
