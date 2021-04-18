//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 4/18/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
