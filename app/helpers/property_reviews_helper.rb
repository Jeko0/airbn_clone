module PropertyReviewsHelper 
  def property_average_rating_percntage(property:, rating:)
    return 0 if property.reviews_count.zero?
    ((property.reviews.where(rating: rating).size.to_f / property.reviews_count) * 100).to_i
  end
end