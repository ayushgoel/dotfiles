#!/usr/bin/env ruby

# Save brew (and casks) list to brew folder.

def saveList(list, filePath)
    list = list.chomp
    if list
        File.open(filePath, "w") { |f|
            f << list
        }
    end
end

saveList(`brew list --formula`, "brew" + File::SEPARATOR + "brew-list")
saveList(`brew list --cask`, "brew" + File::SEPARATOR + "brew-cask-list")
saveList(`gem list --no-version`, "gems" + File::SEPARATOR + "gem-list")