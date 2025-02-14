module Day1
  VERSION = "0.1.0"

  left = [] of Int32
  right = [] of Int32
  d = 0

  File.each_line("./inputs.txt") do |line|
    e = line.split("   ");
    left.push(e[0].to_i);
    right.push(e[1].to_i);
  end  
  left.sort!;
  right.sort!;

	n = 0
  while n < left.size
    d += right.count(left[n]) * left[n]

    n += 1
  end

  puts "The similarity score is"
  puts d
end
