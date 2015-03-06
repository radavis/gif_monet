require "sinatra"

def random_image(type)
  Dir["./public/images/#{type}/*"].sample.gsub("./public/", "")
end

get "/" do
  @background_image = random_image("background")
  @foreground_image = random_image("foreground")
  erb :layout
end
