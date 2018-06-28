require 'pry'
class Application
def call(env)
   resp = Rack::Response.new
   req = Rack::Request.new(env)
   @@items = []
   if req.path=="/items"
     item = req.params["item"]
     if @@items.include?(item)
       item.price
     else
     resp.status = 400
     resp.write "Item not found."
    end
   else
     resp.write "Route not found"
     resp.status = 404
   end

   resp.finish

end
end
