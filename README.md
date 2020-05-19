This container runs the [terser](https://terser.org) CLI.

Example:  
```
cat nice.js | docker run -it --rm gildas/terser > ugly.js
```

By default, [terser](https://terser.org) is run with options: `--compress` and `--mangle toplevel`.

To get terser's help:  
```
docker run --rm gildas/terser --help
```
