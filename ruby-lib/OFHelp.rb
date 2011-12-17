class OFHelp < OFBase
  
    def help_please() 
        header("Help");
        
        puts "      oF is a script to manage your installation of openFrameworks and add-ons."
        puts ""
        puts "      1 - Add-ons"
        puts ""
        puts "        \"oF addons list (alias l)\""
        puts "        List of all addons available to download and also shows us which of the add-ons you have already installed."
        puts ""
        puts "      2 - Install"
        puts ""
        puts "        \"oF install \'addon_name\'\""
        puts "        Before you using this, you call run oF \"addons l\" to see all downloaded add-ons."
        puts ""
        puts "      3 - Update"
        puts ""
        puts "        \"oF update\""
        puts "        Not implemented yet. :/"
        puts ""
        puts "      4 - Help!!"
        puts ""
        puts "        \"oF help\" - See this. :)"
        puts ""
        puts "      Thanks for all the community of openFrameworks!!"
        puts ""
    end
  
end