def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)
   @@items = []
   if req.path=="/items"
     item = req.params["item"]
     resp.write "You requested the songs"
   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish
 end
end
