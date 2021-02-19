class Url < ApplicationRecord
  include EncodingDecodingBijective

  after_create :set_slug

  def set_slug
    update(slug: bijective_encode(id))
  end
end
