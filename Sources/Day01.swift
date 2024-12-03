import Algorithms

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: (left: [Int], right: [Int]) {
    let left: [Int] =
      data
      .split(separator: "\n")
      .compactMap {
        $0.split(separator: " ").first
      }
      .compactMap { Int($0) }
      .sorted()

    let right: [Int] =
      data
      .split(separator: "\n")
      .compactMap {
        $0.split(separator: " ").last
      }
      .compactMap { Int($0) }
      .sorted()

    return (left, right)
  }

  // Replace this with your solution for the first part of the day's challenge.
  func part1() -> Any {
    zip(entities.left, entities.right)
      .reduce(0, { $0 + abs($1.0 - $1.1) })
  }

  // Replace this with your solution for the second part of the day's challenge.
  func part2() -> Any {
    let rightCount = entities.right.reduce(into: [:]) { counts, num in
      counts[num, default: 0] += 1
    }

    return entities.left.reduce(0) { total, num in
      total + num * (rightCount[num] ?? 0)
    }
  }
}
