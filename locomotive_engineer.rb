class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    p wagon_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, c, *rest = each_wagons_id
    result = [c, missing_wagons, *rest, a, b].flatten
    p result

  end

  def self.add_missing_stops(destination, **stops)
    result = {**destination, stops: stops.values}
    p result
  end

  def self.extend_route_information(route, more_route_information)
    result = {**route, **more_route_information}
    p result
  end
end


LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})
# => {"from": "Berlin", "to": "Hamburg", "length": "100", "speed": "50"}