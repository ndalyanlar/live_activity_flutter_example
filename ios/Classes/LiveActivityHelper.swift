//
//  LiveActivityHelper.swift
//  LiveActivity
//
//  Created by Ali Can Batur on 29.07.2022.
//
import Foundation
import ActivityKit






@available(iOS 16.0, *)
 class LiveActivityHelper {
  

    var statusActivity: Activity<StatusAttribute>?
  func start() {
    // We can check if activity is enabled.
    
    guard ActivityAuthorizationInfo().areActivitiesEnabled else {
      print("Activities are not enabled!")
      return
    }
    
    // Initializing the models.
    let statusAttribute = StatusAttribute(buildId: "123456789")
    let initialStatus = StatusAttribute.ProcessStatus(status: .pending,
                                                      estimatedCompletionTime: Date())
    
    // Key point here!
    // Now we tell iOS that there is a new activity started!
    do {
        
       
      statusActivity = try Activity<StatusAttribute>.request(
        attributes: statusAttribute,
        contentState: initialStatus,
        pushType: nil)
    
        
        if statusActivity != nil {
          
            print("Build with ID: \(String(describing: statusActivity?.id)) is now pending.")
            
        }
         else {
              print("Error: Could not initialize activity.")
              return
            }
        
     
      
      
    } catch (let error) {
      print("Error: \(error.localizedDescription)")
    }
    
  }
  
  // Now I will update the current activity.
  func update() {
    Task {
      let updatedCICDStatus = StatusAttribute.ProcessStatus(status: .inProgress,estimatedCompletionTime: Date())
        
        if(statusActivity != nil){
            
            
            await statusActivity?.update(using: updatedCICDStatus)
        }
     else {
              return
            }
        
    
    }
  }
  
  func end(with status: Status) {
    Task {
      let updatedCICDStatus = StatusAttribute.ProcessStatus(status: status, estimatedCompletionTime: Date())
      
        
        if(statusActivity != nil){
          
          
          await statusActivity?.end(using: updatedCICDStatus, dismissalPolicy: .default)
        }
        else {
            return
          }
   
    }
  }
  
}
