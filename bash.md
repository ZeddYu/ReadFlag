可以使用 bash 时

#### Trap the SIGALRM signal

```bash
$ trap "" 14 && /readflag 
Solve the easy challenge first (((((-623343)+(913340))+(-511878))+(791102))-(956792)) 
input your answer: -387571 
ok! here is your flag!! 
...
```



###	mkfifo trick

```bash
$ mkfifo pipe
$ cat pipe | /readflag |(read l;read l;echo "$(($l))\n" > pipe;cat) <dflag ((read 1;read l;echo .4(($1))\n. > pipe;cat) 
input your answer: 
ok! here is your flag!! 
...
```

