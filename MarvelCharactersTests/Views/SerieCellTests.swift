//
//  SerieCellTests.swift
//  MarvelCharactersTests
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import XCTest
@testable import MarvelCharacters

class SerieCellTests: XCTestCase {

    func testInitWithFrameShouldInitializeViews() {
        let serieCell = SerieCell(frame: .zero)

        XCTAssertTrue(serieCell.name.font.pointSize == 16)
        XCTAssertTrue(serieCell.image.clipsToBounds)
    }

    func testInitWithCoderShouldBeNil() {
        XCTAssertNil(SerieCell(coder: NSCoder()))
    }
}
