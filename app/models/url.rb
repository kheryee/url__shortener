class Url < ActiveRecord::Base
  before_create :generate_short_url

  private

  def generate_short_url
    self.short_url = SecureRandom.urlsafe_base64(6, false)
  end
end

