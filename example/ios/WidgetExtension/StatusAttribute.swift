//
//  StatusAttribute.swift
//  Runner
//
//  Created by Nihat's MacBook on 25.09.2022.
//

import ActivityKit

struct StatusAttribute: ActivityAttributes {
  public typealias ProcessStatus = ContentState
  
  public struct ContentState: Codable, Hashable {
    var status: Status
    var estimatedCompletionTime: Date
  }
  
  var buildId: String
}
