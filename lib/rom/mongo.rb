require 'rom'

module ROM
  module Mongo
    require_relative 'mongo/version'
    require_relative 'mongo/relation'
    require_relative 'mongo/gateway'
  end

  register_adapter(:mongo, Mongo)
end
