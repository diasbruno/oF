class OFInstall < OFBase
  
    ####################################################
    # Initialize
    ####################################################
    def initialize(arg)
        super()
        
        addons = OFAddons.new
        
        if addons.isAddon(arg)
            install_addon(addons, arg)
        end
        
    end
    
    # Private Methods
    private
    
    def install_addon(addons, arg)
        header("oF - Installing #{arg} addon...")
        addon = addons.getAddon(arg)
        path_to_git = @addons << "/" << arg
        a = %x[git clone #{addon.github_repo} #{path_to_git}]
        puts a
    end
  
  
end