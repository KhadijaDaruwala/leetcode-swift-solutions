class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        flood(&image, sr, sc, image[sr][sc], newColor)
        return image
    }
    
    func flood(_ image: inout [[Int]], _ i: Int, _ j: Int, _ old: Int, _ new: Int) {
        guard i >= 0 && i < image.count else { return }
        guard j >= 0 && j < image[0].count else { return }
        if image[i][j] == new || image[i][j] != old { return }
        image[i][j] = new
        for (ni, nj) in [(i, j + 1), (i, j - 1), (i + 1, j), (i - 1, j)] {
            flood(&image, ni, nj, old, new)
        }
    }
}
