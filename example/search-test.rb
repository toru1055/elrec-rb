require "./lib/elrec"

searcher = Elrec::Searcher.new
puts searcher.recommend_from_user_id(1, 10, false)
puts searcher.recommend_from_user_id(2, 5, false)
puts searcher.recommend_from_user_id(3, 5, false)
puts searcher.recommend_from_user_id(4, 5, false)
puts searcher.recommend_from_user_id(5, 5, true)

puts searcher.recommend_from_item_id(3, 5, false)
item_list = [1,2,3,4,5]
puts searcher.recommend_from_item_list(item_list, 5, false)
searcher.close
