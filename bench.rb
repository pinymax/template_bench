require 'benchmark'
require './perfome'

erb = Perfome.new

Benchmark.bm do |x|
  x.report { 10000.times { erb.build } }
end
