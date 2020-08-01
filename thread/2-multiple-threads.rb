threads = []

10.times { |i|
  threads << Thread.new { puts i }
}

threads.each(&:join)