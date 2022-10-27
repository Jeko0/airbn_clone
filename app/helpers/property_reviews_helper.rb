module PropertyReviewsHelper 
  def property_average_rating_percntage(property:, rating:)
    ((property.reviews.where(rating: rating).size.to_f / property.reviews_count) * 100).to_i
  end
end