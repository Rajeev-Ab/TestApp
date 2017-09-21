//
//  ServiceAgent.swift
//  TestApp
//
//  Created by Rajeev on 20/09/17.
//  Copyright © 2017 Wildnet. All rights reserved.
//

import UIKit
import Alamofire

class ServiceAgent: NSObject {
    
    class func callServiceWith(url:URLConvertible , method:HTTPMethod , parameter:Parameters ,encoding:ParameterEncoding? , header:HTTPHeaders){
     Alamofire.request(url, method: method, parameters: parameter, encoding: encoding!, headers: header).responseJSON { (dataresponse) in
        if let json = dataresponse.result.value {
            print("JSON: \(json)") // serialized json response
        }
        
        if let data = dataresponse.data, let utf8Text = String(data: data, encoding: .utf8) {
            print("Data: \(utf8Text)") // original server data as UTF8 string
        }
        }
    }

}
