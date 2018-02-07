"""
>>> m = Markov('ab')
>>> m.predict('a')
'b'

>>> m.predict('c')
Traceback (most recent call last):
...
KeyError: 'c'

>>> random.seed(42)
>>> m2 = Markov('Find a city, find yourself')
>>> m2.predict('c')
'i'
>>> m2.predict('i')
't'
>>> m2.predict('t')
'y'

>>> #m2.predict('cit', 1)

>>> get_table('ab')
{'a': {'b': 1}}

>>> get_table('ac')
{'a': {'c': 1}}

>>> get_table('mambma')
{'b': {'m': 1}, 'a': {'m': 1}, 'm': {'b': 1, 'a': 2}}
"""

import argparse
import random
import sys

class Markov:
    def __init__(self, data, size=1):
        #self.table = get_table(data)
        self.tables = []
        for i in range(size):
            self.tables.append(get_table(data, i+1))

    def predict(self, data_in, size=1):
        table = self.tables[len(data_in)-1]
        options = table[data_in]
        possible = ''
        for key, count in options.items():
            possible += key * count
        return random.choice(possible)

def get_table(line, numchars=1):
    result = {}
    for i, _ in enumerate(line):
        chars = line[i:i+numchars]
        try:
            next_char = line[i+numchars]
        except IndexError:
            break
        char_dict = result.get(chars, {})
        char_dict.setdefault(next_char, 0)
        char_dict[next_char] += 1
        result[chars] = char_dict
    return result

def repl(m):
    while 1:
        try:
            txt = input(">")
        except KeyboardInterrupt:
            break
        res = m.predict(txt)
        print(res)

def main(args):
    p = argparse.ArgumentParser()
    p.add_argument('-f', '--file', help='input file')
    p.add_argument('-s', '--size', help='Markov size',
        default=1, type=int)
    p.add_argument('--encoding', help='File encoding',
        default='utf-8')
    p.add_argument('-t', '--test', action='store_true', help='Run tests')
    opt = p.parse_args(args)
    if opt.file:
        with open(opt.file, encoding=opt.encoding) as fin:
            data = fin.read()
            m = Markov(data, size=opt.size)
            repl(m)
    elif opt.test:
        import doctest
        doctest.testmod()

if __name__ == '__main__':
    main(sys.argv[1:])
