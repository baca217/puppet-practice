import hashlib

fp = open('people.txt', 'r')
out = open('out.txt', 'w')
cont = ""
uid = 1000
t = True
line = ""
num = 1 
while(line or t):
        line = fp.readline()
        username = line.strip()

        line = fp.readline()
        name = line.strip()

        password = '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.'

        line = fp.readline()
        group = line.strip()
        if(group != ""):
            group = "\""+group+"\""
        line = "class user-"+username+"{\n\tmacro-useradd{\""+username+"\":\n\t\tname =>\""+name+"\",\n\t\tuid =>\""+str(uid)+"\",\n\t\t password => \'"+password+"\',\n\t\tgroups => ["+group+"],\n\t}\n}\n\n"
        out.write(line)
        uid = uid + 1
        t = False

        line = fp.readline()
        num = num + 1
fp.close()
out.close()
