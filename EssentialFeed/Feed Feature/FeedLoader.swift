//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 1/13/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure (Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
