class OFAddons < OFBase
    
    ####################################################
    # Initialize
    ####################################################
    def initialize()
        super()
        
        @installed = list_installed_addons()
        @disponible = list_disponible_addons()
    end
    
    # check all installed addons and other you definally 
    # want to take a look
    def addons()
      header("oF - Installed addons...")
      
      @disponible.each do |d|
          if @installed.index(d.name) != nil
            puts "    -> #{d.name} - Installed"
          else
            puts "    -> #{d.name} - Not installed"
          end
      end

      puts ""

    end #end addons
    
    def isAddon(name)
        itIs = false
        
        @disponible.each do |d|
            if d.name == name
              itIs = true
            end
        end
        
        return itIs
    end
    
    def getAddon(name)
        addon = nil
        
        @disponible.each do |d|
            if d.name == name
              addon = d
            end
        end
        
        return addon
    end
    
end