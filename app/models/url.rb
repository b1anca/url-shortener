class Url < ApplicationRecord
  include EncodingDecodingBijective

  after_create :set_short_url

  def set_short_url
    update(short_url: bijective_encode(id))
  end
end
