class Stock

  attr_reader :client

  def initialize
    @client = IEX::Api::Client.new
  end

  def look_up(ticker)
    client.price(ticker)
  end

end