def class_photos(red_shirt_heights, blue_shirt_heights)
  red_shirt_heights.sort!
  blue_shirt_heights.sort!
  back = ""

  return false if red_shirt_heights.last == blue_shirt_heights.last

  back = if red_shirt_heights.last > blue_shirt_heights.last
    "red"
  else
    "blue"
  end

  red_shirt_heights.each_with_index do |red, i|
  end
end

class_photos(
  [3, 5, 6, 8, 2],
  [2, 4, 7, 5, 1]
)
