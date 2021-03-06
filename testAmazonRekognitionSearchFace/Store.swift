//
//  Store.swift
//  testAmazonRekognitionSearchFace
//
//  Created by osu on 2018/02/15.
//  Copyright © 2018 osu. All rights reserved.
//

import Foundation

class Store<T> {

    private let queue = DispatchQueue(label: "store")
    private var store: T? = nil

    func set(_ item: T?) {
        queue.sync {
            self.store = item
        }
    }

    func get() -> T? {
        return queue.sync {
            return self.store
        }
    }

}
