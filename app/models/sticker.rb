class Sticker
  include Ripple::Document
  property :name, String, presence: true
  property :company, String
  property :location, String

  def self.all
    list
  end
end