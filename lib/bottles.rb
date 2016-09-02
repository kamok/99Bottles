class Bottles

  def song
    verses(99,0)
  end

  def verse(num_of_bottles)
    lines(num_of_bottles)
  end

  def verses(num1,num2)
    output = []
    length = (num2..num1).to_a.count

    (num2..num1).to_a.reverse.each_with_index do |num, index|
      output << lines(num) + (length - index > 1 ? "\n" : "")
    end
    output.join
  end

  private

  def lines(num_of_bottles)
    case num_of_bottles
      when 0
        "No more bottles of beer on the wall, no more bottles of beer."+ 
        "\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      when 1
         "1 bottle of beer on the wall, 1 bottle of beer."+
         "\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      else
        "#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer."+
        "\nTake one down and pass it around, #{num_of_bottles - 1} " + "#{pluralize_bottles(num_of_bottles)}" + " of beer on the wall.\n"
      end
  end 

  def pluralize_bottles(num_of_bottles)
    num_of_bottles == 2 ? "bottle" : "bottles"
  end

end