# shared_disk_chat
Chat between computers connected to one shared disk or network disk

![Bez názvuee](https://user-images.githubusercontent.com/60501493/215567708-28241f5c-e6e2-4160-a4d8-310004907e44.png)

## About
This was made by me out of boredom in classes on my school and runs on school's network disk

## How to set up
- Files here are configured for hypothetical network disk "server1", where multiple pc's are connected and every pc has it's own subfolder on server1, so you'll need to rewrite all paths to match your own disk. If any path contains "userA", then userA needs to be changed to path leading to \S1ChatAdmin\
- \S1Chat\ - has to be accesible by all users, in server1 example each user has folder copied in their subfolder
- \S1ChatAdmin\ - all paths need to be directed to this folder, contains "chat.txt" and updater that can also be used as installator, so that you don't have to manually copy S1chat to each users location