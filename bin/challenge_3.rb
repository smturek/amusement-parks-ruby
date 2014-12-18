require 'yaml'
require 'pp'

parks = YAML.load(File.read('../data/amusement_parks.yml'))

result = {}

parks.each do |park|
  result["#{park[:state]}, #{park[:country]}"] ||= []
  result["#{park[:state]}, #{park[:country]}"] << park
end

pp result
