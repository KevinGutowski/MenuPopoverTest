//
//  EventMonitor.swift
//  MenuPopoverTest
//
//  Created by Kevin Gutowski on 12/22/20.
//

import Cocoa

class EventMonitor: NSObject {
    private var monitor: Any?
    private let mask: NSEvent.EventTypeMask
    private let handler: (NSEvent?) -> Void
    
    public init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent?) -> Void) {
      self.mask = mask
      self.handler = handler
    }
    
    deinit {
      stop()
    }
    
    public func start() {
      monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler)
    }
    
    public func stop() {
      if monitor != nil {
        NSEvent.removeMonitor(monitor!)
        monitor = nil
      }
    }
}
