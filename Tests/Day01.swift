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

  let testLeftEntities = [1, 2, 3, 3, 3, 4]
  let testRightEntities = [3, 3, 3, 4, 5, 9]

  @Test func testCreateEntities() async throws {
    let challenge = Day01(data: testData)
    #expect(testLeftEntities == challenge.entities.left)
    #expect(testRightEntities == challenge.entities.right)
  }

  @Test func testPart1() async throws {
    let challenge = Day01(data: testData)
    #expect(challenge.part1() as! Int == 11)
  }

  @Test func testPart2() async throws {
    let challenge = Day01(data: testData)
    #expect(challenge.part2() as! Int == 31)
  }
}
