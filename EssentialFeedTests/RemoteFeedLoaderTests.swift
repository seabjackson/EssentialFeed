//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Seab Jackson on 1/18/23.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()
        XCTAssertNil(client.requestedURL)
    }

}
