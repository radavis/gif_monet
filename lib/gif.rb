require "carrierwave"

class Gif < CarrierWave::Uploader::Base
  TYPES = %w(foreground background)

  attr_reader :type, :root_path

  storage :file

  def initialize(type, root_path)
    @type = type
    @root_path = root_path
  end

  def store_dir
    "#{@root_path}/public/images/#{@type}"
  end

  def cache_dir
    "#{@root_path}/tmp/uploads"
  end
end
