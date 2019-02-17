# https://www.codewars.com/kata/57f4ccf0ab9a91c3d5000054

# Details:

# Lot of junior developer can be stuck when they need to change the access permission to a file or a directory in an Unix-like operating systems.

# To do that they can use the chmod command and with some magic trick they can change the permissionof a file or a directory. For more information about the chmod command you can take a look at the wikipedia page.

# chmod provides two types of syntax that can be used for changing permissions. An absolute form using octal to denote which permissions bits are set e.g: 766. Your goal in this kata is to define the octal you need to use in order to set yout permission correctly.

# Here is the list of the permission you can set with the octal representation of this one.

#     User
#         read (4)
#         write (2)
#         execute (1)
#     Group
#         read (4)
#         write (2)
#         execute (1)
#     Other
#         read (4)
#         write (2)
#         execute (1)

# The method take a hash in argument this one can have a maximum of 3 keys (owner,group,other). Each key will have a 3 chars string to represent the permission, for example the string rw- say that the user want the permission read, write without the execute. If a key is missing set the permission to ---

# Note: chmod allow you to set some special flags too (setuid, setgid, sticky bit) but to keep some simplicity for this kata we will ignore this one.

PERMISSION = { r: 4, w: 2, x: 1, '-': 0 }
KEYS       = [ :user, :group, :other ]

def chmod_calculator(perm)
  KEYS.map.with_index do |_, index|
    perm.has_key?(KEYS[index]) ? perm[KEYS[index]].chars.map { |p| PERMISSION[p.to_sym] }.sum : 0
  end.join
end
