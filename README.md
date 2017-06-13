Because sketch file stores version information in meta.json, this script simply change the relative fields to downgrade the file version.

## usage

First, add execute permission for the script

```shell
chmod a+x anti-sketch.sh
```

Now you can downgrade the sketch file by:

```shell
./anti-sketch.sh [file name]
```

