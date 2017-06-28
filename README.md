
tftpcs: tftp client and server
Date: 2017-06-26   
Category: embedded, linux, tftp, utilities   
License:  GNU GENERAL PUBLIC LICENSE Version 2   
==============================================================================

# Clone project to your workspace
```
$ git clone https://github.com/Napat/tftpcs.git
$ cd tftpcs
```

# Setup environment
By default, no need to edit environment but if you want to cross-compile just open `make.rules` and edit `CROSS_COMPILE` to your toolchain path.  

# Compile
To compile tftpd(server) and tftpc to default output path: `<tftpcs>/output`   
```
$ make
$ cd output
$ ls 
tftpc  tftpd
```


# Execute tftp server
```
$ ./tftp -p <root path for tftp server>
```
For more options see `./tftp -h`   

