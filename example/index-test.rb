require "elrec"

indexer = Elrec::Indexer.new
puts indexer.index(5,2)
puts indexer.index(5,3)
puts indexer.index(5,4)
puts indexer.index(5,5)
puts indexer.index(5,5)
puts indexer.index(6,3)
puts indexer.index(6,4)
puts indexer.index(6,5)
puts indexer.index(7,4)
puts indexer.index(7,5)
puts indexer.index(7,6)
indexer.close
