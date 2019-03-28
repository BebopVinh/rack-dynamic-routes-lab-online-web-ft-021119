class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      wanted_item = Item.all.find {|item| item.name == item_name}
      resp.write

    # @@songs.each do |song|
    #   resp.write "#{song.title}\n"
    # end

    resp.finish
  end
end
