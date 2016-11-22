require 'benchmark'
require './perfome'
require './perfome_haml'
require './perfome_slim'

erb = Perfome.new
erb_2 = PerfomeHaml.new
erb_3 = PerfomeSlim.new

Benchmark.bm do |x|
  x.report { 10000.times { erb.build } }
  x.report { 10000.times { erb_2.build } }
  x.report { 10000.times { erb_3.build } }
end
