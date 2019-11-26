import re
import string
from collections import defaultdict
frequency = {}
document_text = open('/home/dshmatko/PythonEx2/Trash/text.txt', 'r')
text_string = document_text.read().lower()
match_pattern = re.findall(r'\b[a-z]{3,15}\b', text_string)
d = defaultdict(int)
s = dict.fromkeys(match_pattern, 0)
s = {z: match_pattern.count(z) for z in s.keys()}
print(s)
