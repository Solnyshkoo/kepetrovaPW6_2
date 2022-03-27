//
//  MyLogger1.swift
//  Framework
//
//  Created by Ksenia Petrova on 20.11.2021.
//

import Foundation
public struct MyLogger1 {
public static func log(_ s: String) {
          print("MyLogger1 from framework (\(Date())): \(s)")
      }
}
