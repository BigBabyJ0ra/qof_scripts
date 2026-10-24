# qof_scripts
Quality of life scripts for me 
## disord update 
1. make the script exicutable
```
chmod +x discord-update
```
2. Move the script to /usr/local/bin so your terminal knows where to find it anytime you type the command.

```
sudo mv discord-update /usr/local/bin/
```
3. Test by running the command. 

## toggle_touchscreen.sh
Just download and make a custom keyboard shortcut. 

## QWERTY DE Keyboard layout 

1. Download the file and save it to the directory `/usr/share/X11/xkb/symbols/` (requires admin rights) OR create a file with the name "usde" there and copy the contents of the [usde](https://github.com/BigBabyJ0ra/qof_scripts/blob/main/usde) file. 

2. Register the new layout:
   * Open the rules file: `sudo nano /usr/share/X11/xkb/rules/evdev.xml`
   * Search for `<layoutList>` (press `Ctrl` + `W`, type `<layoutList>`, and press `Enter`).
   * Immediately below `<layoutList>`, paste the following block to register your `usde` layout:
   
   ```
      <layout>
       <configItem>
         <name>usde</name>
         <shortDescription>usde</shortDescription>
         <description>English (USDE Custom)</description>
         <languageList>
           <iso639Id>eng</iso639Id>
         </languageList>
       </configItem>
       <variantList/>
     </layout>
   ```
   * Save and exit.
3. Clear the compiled XKB cache so the system detects your new standalone file:
   ```sudo rm -rf /var/lib/xkb/*```
5. Log out, log in, go to settings and select the keyboard layout.
To use the letters use right alt + corresponding non-umlaut letter for umlaut variant and for scharfes S use S. For capital letters add shift to keys combinations
