require "elrec"

searcher = Elrec::Searcher.new
json = searcher.recommend_from_item_id(46, 5, true)
#json = searcher.recommend_from_item_id(3000000, 5, true)
res = Elrec::SearchResults.new(json)
p res
res.get_items.each do |e|
  puts "itemId=#{e.item_id}, score=#{e.score}"
end
