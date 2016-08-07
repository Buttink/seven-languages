
file = File.open(ARGV[0])

pattern = Regexp.new(ARGV[1])

file.each_with_index{|t,l|
  if pattern.match(t)
    puts "%d: '%s'" % [l, t.to_s.rstrip]
  end
}
