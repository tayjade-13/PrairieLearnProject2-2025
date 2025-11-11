
/,,/d

s/ VS /,/
s/ vs /,/
s/'/'\\''/g


# [] defines a charcater class, ^ insdie means "NOT", the comma is the character I'm excluding
# in \(~~~\), the \ mean satrt and end for a group
# group 1 = \(.*,\)    group 2 = )\([^,]*\)    the comma is where the VS used to be    group 3 = \([^,]*\) 

s/(.*,)([^,]*),([^,]*)$/\1'\2','\3'/

s/^([^,]*),([^,]*),([0-9]+)\.([0-9]+)\.([0-9]+),*/\1,\2,\5-\4,/
