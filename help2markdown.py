"""
将命令帮助信息转换成 Markdown 表
"""

import subprocess
import os


def get_help(command):
    p = subprocess.Popen(command, stdout=subprocess.PIPE)
    out, _ = p.communicate()
    return out

def handle_help(out):
    """
    out文本格式要求如下：
    1.每行开头空两格
    2.参数前必有 -
    3.参数与解释中间至少有两个空格
    4.参数不会超过一行，解释可能有多行
    5.参数内部不会有两个空格
    如果格式不符合，可能代码需做调整
    """
    out_list = out.splitlines()
    out_dict = {}
    param = b""
    explain = b""
    for index, line in enumerate(out_list):
        if line.startswith(b'  -'):
            # 已经到下一个参数了，存储之前的内容
            # print(param, explain)
            if param:
                out_dict[param] = explain
            # 去除开头的两个空格
            line = line[2:]
            # 一般遇到两个空格表示参数写完了，后面是说明
            param = line.split(b'  ')[0]
            # 如果参数与这行相等，那么这行只有参数，相关解释在下一行
            if param == line.strip():
                explain = b""
            else:
                explain = line.split(param)[-1].lstrip()
        else:
            # 这行只有解释，没有参数
            if param:
                explain += b" " + line.lstrip()
    return out_dict


def dict2markdown(out_dict):
    md = "|参数|解释|%s|-|-|%s" % (os.linesep, os.linesep)
    for param, message in out_dict.items():
        # 表格中内容不能直接含有|
        param = param.decode('utf8').replace('|', '&#124;')
        message = message.decode('utf8').replace('|', '&#124;')
        md += "|%s|%s|%s" % (param, message, os.linesep)
    return md


def main(command):
    out = get_help(command)
    out_dict = handle_help(out)
    return dict2markdown(out_dict)


if __name__ == '__main__':
    command = input("请输入帮助指令：")
    md = main(command)
    print(md)
