require 'socket'

module Elrec
  class Indexer

    def initialize(host = "localhost", port = 1056)
      @host = host
      @port = port
      self.connect
    end

    def connect
      @socket = TCPSocket.open(@host, @port)
    end

    def index(user_id, item_id)
      json = "{'userId' : #{user_id}, " +
              "'itemId' : #{item_id}}\n"
      @socket.write(json)
      return @socket.gets
    end

    def close
      @socket.write("\n")
      @socket.close
    end
  end
end
