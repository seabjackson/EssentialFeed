//
//  XCTTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Seab Jackson on 2/13/23.
//

import XCTest

extension XCTestCase {
    
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated", file: file, line: line)
        }
    }
}
