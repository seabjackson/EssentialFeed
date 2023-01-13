//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 1/13/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
