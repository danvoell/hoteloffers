class Offer < ActiveRecord::Base

require 'elasticsearch/model'

def to_param
    [id, hotelname, offertext.parameterize].join("-")
  end


end
