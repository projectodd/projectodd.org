
class Projects

  def initialize()
  end


  def execute(site)
    site.projects = {}
    Dir[ site.dir + "/_projects/*" ].each do |project|
      File.basename( project ) =~ /^([^\.]+)/
      key = $1
      project_page = site.engine.load_page( project )
      site.projects[ key.to_sym ] = project_page 
    end
  end

end
