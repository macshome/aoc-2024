import Testing

@testable import AdventOfCode

// Make a copy of this file for every day to ensure the provided smoke tests
// pass.
struct Day01Tests {
  // Smoke test data provided in the challenge question
  let testData = """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """

  @Test func testCreateArrays() async throws {
    let challenge = Day01(data: testData)
    challenge.createArrays()


    
    #expect(challenge.arrays.count == 2)
    #expect(challenge.arrays[0].count == 3)
    #expect(challenge.arrays[1].count == 3)
  }
  @Test func testPart1() async throws {
    let challenge = Day01(data: testData)
    #expect(String(describing: challenge.part1()) == "6000")
  }

  @Test func testPart2() async throws {
    let challenge = Day01(data: testData)
    #expect(String(describing: challenge.part2()) == "32000")
  }
}
