"""Renumber the APA 7 figure and table labels of the report.

Each figure or table starts with a label and a title:

    <p class="apa-label">Figura 12</p>
    <p class="apa-title">Título de la figura</p>

The number in the label is rewritten in report order (chapter I to VI, then the
end of the report), so new figures or tables can be added with any number, for
example "Figura 0", and this script fixes the sequence.

Usage, from the repository root:

    python tools/apa_numbering.py
"""
import glob
import os
import re

REPORT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'report')
LABEL = re.compile(r'(<p class="apa-label">)(Figura|Tabla) \d+(</p>)')


def report_files():
    main = sorted(glob.glob(os.path.join(REPORT, 'main-content', '*', '*.md')))
    end = sorted(glob.glob(os.path.join(REPORT, 'end-of-report', '*.md')))
    return main + end


def main():
    counters = {'Figura': 0, 'Tabla': 0}

    def renumber(match):
        kind = match.group(2)
        counters[kind] += 1
        return '%s%s %d%s' % (match.group(1), kind, counters[kind], match.group(3))

    for path in report_files():
        with open(path, encoding='utf-8') as f:
            text = f.read()
        new = LABEL.sub(renumber, text)
        if new != text:
            with open(path, 'w', encoding='utf-8', newline='') as f:
                f.write(new)
    print('Figuras: %d, tablas: %d' % (counters['Figura'], counters['Tabla']))


if __name__ == '__main__':
    main()
