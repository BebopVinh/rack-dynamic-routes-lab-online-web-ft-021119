class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      

    # @@songs.each do |song|
    #   resp.write "#{song.title}\n"
    # end

    resp.finish
  end
end
