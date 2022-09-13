//
//  Service.swift
//  visa
//
//  Created by EdgardVS on 9/08/22.
//

import Foundation
import Alamofire


struct Service {
    static func getStringData(completion: @escaping (Swift.Result<String, Error>) -> ()) {
        
        let headers: HTTPHeaders = [.authorization(username: "integraciones@niubiz.com.pe", password: "_7z3@8fF")]
        AF.request("https://apisandbox.vnforappstest.com/api.security/v1/security", method: .post, parameters: nil, headers: headers, requestModifier: nil).validate().responseString { response in
            switch response.result {
            case .success(let token):
                completion(.success(token))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
}
