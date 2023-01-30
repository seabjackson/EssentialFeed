//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 1/29/23.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}
