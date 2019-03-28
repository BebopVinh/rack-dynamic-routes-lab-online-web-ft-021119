class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      wanted_item = Item.all.find {|item| item.name == item_name}
      resp.write wanted_item.price
    else
      resp.write "404 Error"
    end
    resp.finish
  end
end
