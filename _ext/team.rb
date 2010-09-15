
class Team

  def initialize()
  end


  def execute(site)
    site.team = {}
    Dir[ site.dir + "/_team/*" ].each do |member|
      File.basename( member ) =~ /^([^\.]+)/
      key = $1
      member_page = site.engine.load_page( member )
      site.team[ key.to_sym ] = member_page 
    end
  end

end
