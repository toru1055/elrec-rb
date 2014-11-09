require 'socket'

module Elrec
  class Searcher

    def initialize(host = "localhost", port = 1055)
      @host = host
      @port = port
      self.connect
    end

    def connect
      @socket = TCPSocket.open(@host, @port)
    end

    def recommend_from_user_id(user_id, how_many, include_known_items)
      json = "{'inputType' : 'user_id', " + 
              "'userId' : #{user_id}, " +
              "'howMany' : #{how_many}, " +
              "'includeKnownItems' : #{include_known_items}}\n"
      @socket.write(json)
      return @socket.gets
    end

    def recommend_from_item_id(item_id, how_many, include_known_items)
      json = "{'inputType' : 'item_id', " + 
              "'itemId' : #{item_id}, " +
              "'howMany' : #{how_many}, " +
              "'includeKnownItems' : #{include_known_items}}\n"
      @socket.write(json)
      return @socket.gets
    end

    def recommend_from_item_list(item_list, how_many, include_known_items)
      json = "{'inputType' : 'item_id_list', " + 
              "'itemIdList' : #{item_list}, " +
              "'howMany' : #{how_many}, " +
              "'includeKnownItems' : #{include_known_items}}\n"
      @socket.write(json)
      return @socket.gets
    end

    def close
      @socket.write("\n")
      @socket.close
    end
  end
end
