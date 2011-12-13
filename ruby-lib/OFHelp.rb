class OFHelp < OFBase
  
    def help_please() 
        header("oF - Help");
        
        puts "\"oF addons list - List of all addons available to download."
        puts "\"oF addons l - List of all addons available to download."
        puts ""
        puts "\"oF help - See this. duh..."
        puts ""
        puts "\"oF install \"addon_name\" - Before you using this, you call run oF \"addons l\" to see all downloaded add-ons"
        puts ""
    end
  
end