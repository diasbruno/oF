class OFBase
  
    attr_accessor :dir
    
    ####################################################
    # Initialize
    ####################################################
    def initialize()
        
        @no_way = [".","..",".DS_Store",".gitignore",".project","ofAddons.h","of.py","of.rb","of.xml"]
        @addons_xml = "./addons"
        @addons = "../openframeworks/addons"
        
    end
    
    # Protected Methods
    protected
    
    ####################################################
    # header
    # TODO: of ascii :)
    ####################################################
    def header(title)
      
        puts ""
        puts "##############################################################"
        puts "## #{title}"
        puts "##############################################################"
        puts ""
      
    end
    
    ####################################################
    # Get all installed addons
    ####################################################
    def list_installed_addons()
        list = Array.new
        addons = Array.new
        
        Dir.foreach(@addons) {|x| list.push x }
          
        list.each do |l|
          if !@no_way.index(l)
            addons.push l
          end
        end
        
        return addons
    end
    
    ####################################################
    # Get all xml for possible addons
    ####################################################
    def list_disponible_addons()
      list = Array.new
      addons = Array.new
      filename = ""
      file = ""

      Dir.foreach(@addons_xml) { |x| 
        if !@no_way.index(x)
          list.push x 
        end
      }

      list.each do |l|
        if !@no_way.index(l)
          filename.concat(@addons_xml)
          filename << "/" << l

          file = File.new( filename , "r")
          addons.push OFAddon.new(file)

          file = nil
          filename = ""
        end

      end

      return addons
    end
  
end