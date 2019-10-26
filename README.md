# all2markdown

万物转换成 Markdown

### help2markdown

命令的帮助说明转换成 Markdown 表格

使用方式

```
python3 help2markdown.py
```

例如

```
> nosetest -h
Usage: nosetests [options]

Options:
  -h, --help            show this help message and exit
  -V, --version         Output nose version and exit
  -p, --plugins         Output list of available plugins and exit. Combine
                        with higher verbosity for greater detail
  -v, --verbose         Be more verbose. [NOSE_VERBOSE]
  --verbosity=VERBOSITY
                        Set verbosity; --verbosity=2 is the same as -v
  -q, --quiet           Be less verbose
```

转换后

| 参数                  | 解释                                                                                        |
| --------------------- | ------------------------------------------------------------------------------------------- |
| -h, --help            | show this help message and exit                                                             |
| -V, --version         | Output nose version and exit                                                                |
| -p, --plugins         | Output list of available plugins and exit. Combine with higher verbosity for greater detail |
| -v, --verbose         | Be more verbose. [NOSE_VERBOSE]                                                             |
| --verbosity=VERBOSITY | Set verbosity; --verbosity=2 is the same as -v                                              |
| -q, --quiet           | Be less verbose                                                                             |
