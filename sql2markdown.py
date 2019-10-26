"""
.sql文件转换成 Markdown 表格
"""
import re
import sys


def get_sql(file_path):
    with open(file_path, 'r') as f:
        out = f.read()
    return out.replace('\n', '')


def handle_sql(sql_str):
    title_list = re.findall("`([^\s]+?)`[^(]+?\(\d+\)", sql_str)
    content = re.findall("VALUES (\([\w\W]*?\));", sql_str)
    content_list = []
    for c in content:
        c = c.replace('NULL', '\"\"')
        content_list.append(eval(c))
    return title_list, content_list


def sql2markdown(title_list, content_list):
    col = len(title_list)
    md = '|'
    for i in range(col):
        md += title_list[i] + '|'
    md += '\r\n|'
    for i in range(col):
        md += '-|'
    md += '\r\n|'
    for content in content_list:
        for c in content:
            md += '%s|' % c
        md += '\r\n|'
    return md[:-1]


if __name__ == '__main__':
    sql_str = get_sql(sys.argv[1])
    title_list, content_list = handle_sql(sql_str)
    print(sql2markdown(title_list, content_list))
