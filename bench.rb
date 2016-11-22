require 'benchmark'
require './perfome'

erb = Perfome.new

time = Benchmark.realtime do
  10000.times do
    erb.build
  end
end

puts time
