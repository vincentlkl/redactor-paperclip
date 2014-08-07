require "orm_adapter"
require "redactor-rails/version"
require 'pathname'

module RedactorRails
  IMAGE_TYPES = ['image/jpeg', 'image/png', 'image/gif', 'image/jpg', 'image/pjpeg', 'image/tiff', 'image/x-png']

  FILE_TYPES = ['application/msword', 'application/pdf', 'text/plain', 'text/rtf', 'application/vnd.ms-excel']

  autoload :Http, 'redactor-rails/http'

  module Backend
    autoload :CarrierWave, 'redactor-rails/backend/carrierwave'
    autoload :Paperclip, 'redactor-rails/backend/paperclip'
  end
  require 'redactor-rails/orm/base'
  require 'redactor-rails/orm/active_record'
  require 'redactor-rails/orm/mongoid'
  require 'redactor-rails/engine'
  require 'redactor-rails/helper'

  mattr_accessor :image_file_types, :document_file_types
  @@image_file_types = ["jpg", "jpeg", "png", "gif", "tiff"]
  @@document_file_types = ["pdf", "doc", "docx", "xls", "xlsx", "rtf", "txt"]

  # Ckeditor files destination path
  mattr_accessor :relative_path
  @@relative_path = '/assets/redactor_rails'

  def self.root_path
    @root_path ||= Pathname.new(File.dirname(File.expand_path('../', __FILE__)))
  end

  def self.setup
    yield self
  end

end
