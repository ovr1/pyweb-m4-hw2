from pathlib import Path

n = int(len(set(Path(r'C:\Users\Lenovo\PycharmProjects\pyweb-m4-hw2\lesson5.txt').read_text(encoding='utf-8').split())))
print(n)

l = int(len(set(Path(r'C:\Users\Lenovo\PycharmProjects\pyweb-m4-hw2\lesson5.txt').read_text(encoding='utf-8').split(','))))
print(l)

print(round(l/n*100),'%')