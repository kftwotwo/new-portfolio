class Blog < ApplicationRecord
  def self.search(search)
    columns = %w{title tags body}
    self.where(
      columns
      .map {|c| "#{c} like :search" }
      .join(' OR '),
    search: "%#{search}%"
    )
  end
end
