require 'team'
require 'projects'

Awestruct::Extensions::Pipeline.new do
  # extension Awestruct::Extensions::Posts.new( '/news' ) 
  # extension Awestruct::Extensions::Indexifier.new
  extension Team.new
  extension Projects.new
end

