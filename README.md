# shared_disk_chat
chat between computers connected to one shared disk or network disk
## about
this was made by me out of boredom in classes on my school and runs on school's network disk
## how to set up
- files here are configured for hypothetical network disk "server1", where multiple pc's are connected and every pc has it's own subfolder on server1, so you'll need to rewrite all paths to match your own disk. If any path contains "userA", then userA needs to be changed to path leading to \S1ChatAdmin\
- \S1Chat\ - has to be accesible by all users, in server1 example each user has folder copied in their subfolder
- \S1ChatAdmin\ - all paths need to be directed to this folder, contains "chat.txt" and updater that can also be used as installator, so that you don't have to manually copy S1chat to each users location
