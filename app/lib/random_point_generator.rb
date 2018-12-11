# source https://stackoverflow.com/questions/43195899/how-to-generate-random-coordinates-within-a-circle-with-specified-radius

class RandomPointGenerator
  EARTH_RADIUS = 6371 # km
  ONE_DEGREE = EARTH_RADIUS * 2 * Math::PI / 360 * 1000 # 1° latitude in meters

  def self.random_point_in_disk(max_radius)
    r = max_radius * rand**0.5
    theta = rand * 2 * Math::PI
    [r * Math.cos(theta), r * Math.sin(theta)]
  end

  def self.random_location(center, radius)
    dx, dy = random_point_in_disk(radius)
    random_lat = center[:lat] + dy / ONE_DEGREE
    random_lon = center[:lng] + dx / ( ONE_DEGREE * Math::cos(center[:lat] * Math::PI / 180) )
    {lng: random_lon, lat: random_lat}
  end
end
