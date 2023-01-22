//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Seab Jackson on 1/10/23.
//

import Foundation

public struct FeedItem: Equatable {
    let uuid: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
