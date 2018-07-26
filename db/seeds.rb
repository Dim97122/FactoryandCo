
require 'faker'


10.times do
  part = Part.create(part_number: Faker::Coffee.variety)
end

15.times do
  assembly = Assembly.create(name: Faker::Beer.name)
end

# these two last commands fill up the assemblies_parts table
# give each part a random assembly
Part.all.each do |part|
  part.assemblies.push(Assembly.all.sample)
  part.save
end

# give each assembly a random part
Assembly.all.each do |assembly|
  assembly.parts.push(Part.all.sample)
  assembly.save
end
