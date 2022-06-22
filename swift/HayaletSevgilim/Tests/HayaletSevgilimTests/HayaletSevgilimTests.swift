import XCTest
@testable import HayaletSevgilim

final class HayaletSevgilimTests: XCTestCase {
    func testLyrics() throws {
        XCTAssertEqual(HayaletSevgilim().lyrics.first, "Ceza mı bu")
        XCTAssertEqual(HayaletSevgilim().lyrics.last, "Hayalet sevgilim")
    }

    func testLyricsPrint() throws {
        var counter: Int = .zero

        for lyric in HayaletSevgilim().lyrics {
            print(lyric)
            counter += 1
        }

        XCTAssertEqual(HayaletSevgilim().lyrics.count, counter)
    }
}
