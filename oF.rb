#!/usr/bin/ruby

require 'ruby-lib/OFBase'
require 'ruby-lib/OFAddon'
require 'ruby-lib/OFAddons'
require 'ruby-lib/OFUpdate'
require 'ruby-lib/OFInstall'
require 'ruby-lib/OFHelp'

#
# the main program!!!
#
def main(args)
  
    # store the class we'll use
    oF = nil
    
    # check addons
    if args[0] == "addons"
        of = OFAddons.new
        if args[1] == nil
            of.addons()
        end
        if args[1] == "list" || args[1] == "l"
            of.addons()
        end
    end
    
    # check updates
    if args[0] == "update"
      of = OFUpdate.new
    end
    
    # check addons
    if args[0] == "install"
      if args[1] == nil
          of.addons()
      end
      of = OFInstall.new(args[1])
    end
    
    # help please
    if args[0] == "help"
      of = OFHelp.new()
      of.help_please()
    end
    
end

main(ARGV)