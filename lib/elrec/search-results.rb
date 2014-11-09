require 'json'

module Elrec

  class ItemScore
    attr_accessor :item_id, :score
    def initialize(item_id, score)
      @item_id = item_id
      @score = score
    end
  end

  class SearchResults
    def initialize(json)
      @items = Array.new
      self.parse(json)
    end

    def parse(json)
      obj = JSON.parse(json)
      if(self.check?(obj))
        obj.each do |e|
          @items.push(ItemScore.new(e["itemId"], e["score"]))
        end
        @status = true
      else
        @status = false
      end
    end

    def check?(obj)
      res = false
      if(obj.size == 0)
        res = true
      else
        if(obj.instance_of?(Array))
           if(obj[0].has_key?('itemId'))
             if(obj[0].has_key?('score'))
               res = true
             end
           end
        end
      end
      return res
    end

    def get_items
      if(@status)
        return @items
      else
        return nil
      end
    end
  end

end
