//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 2/4/23.
//

import Foundation

internal class FeedItemsMapper {
    
    static let OK_200 = 200
    
    static func map(_ data: Data, response: HTTPURLResponse) throws -> [FeedItem] {
        guard response.statusCode == OK_200 else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return try  JSONDecoder().decode(Root.self, from: data).items.map { $0.item }
    }
    
    private struct Root: Decodable {
        let items: [Item]
    }

    private struct Item: Decodable {
        let id: UUID
        let description: String?
        let location: String?
        let image: URL
        
        var item: FeedItem {
            return FeedItem(id: id, description: description, location: location, imageURL: image)
        }
    }
}
