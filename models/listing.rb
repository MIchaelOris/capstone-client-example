class Listing
  attr_accessor :id, :agent, :address, 
  :neighborhood, :sq_footage, :price, :description, :bedrooms, :baths, :style
  def initialize(input_options)
    @id = input_options["id"]
    @agent = input_options["agent"]
    @address = input_options["address"]
    @neighborhood = input_options["neighborhood"]
    @sq_footage = input_options["sq_footage"]
    @price = input_options["price"]
    @description = input_options["description"]
    @bedrooms = input_options["bedrooms"]
    @baths = input_options["baths"]
    @style = input_options["style"]

  end

  def self.convert_hashs(listing_hashs)
    collection = []

    listing_hashs.each do |listing_hash|
      collection << Listing.new(listing_hash)
    end

    collection
  end
end