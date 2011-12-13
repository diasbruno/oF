require 'rexml/document'

class OFAddon
  attr_accessor :name, :github_repo, :github_page, :contributors, :description
  
  # initialize
  def initialize(file)
    @xml = process(file)
  end # end initialize
  
  # process
  def process(file)
    
    # make a xml
    xml = REXML::Document.new file
    
    # addon name
    @name = xml.elements["//name"][0].value
    
    # gthub stuff
    @github_repo = xml.elements["//repo"][0].value
    @github_page = xml.elements["//page"][0].value
    
    # list of contributors
    @contributors = Array.new
    xml.elements.each("*/contributors/name") { |e| 
      @contributors.push e.text
    }
    
    # description
    @description = xml.elements["//description"][0].value
    
    #license
    @license = xml.elements["//license"][0].value
    
  end
  
end