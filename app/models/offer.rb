class Offer < ActiveRecord::Base

def to_param
    [id, hotelname, offertext.parameterize].join("-")
  end

end
