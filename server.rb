require "sinatra"
require "rack-flash"
require "./lib/gif"

enable :sessions
use Rack::Flash

def random_image(type)
  images = Dir["./public/images/#{type}/*"]
  if images.any?
    return images.sample.gsub("./public/", "")
  else
    return ""
  end
end

get "/" do
  @refresh = true
  @background_image = random_image("background")
  @foreground_image = random_image("foreground")
  erb :nav
end

get "/gifs/new" do
  @refresh = false
  erb :gif
end

post "/gifs" do
  gif = Gif.new(params[:gif_type], settings.root)
  gif.store!(params[:gif])
  flash[:notice] = "New Gif added to the Hivemind."
  redirect to("/")
end
