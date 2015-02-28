>>> import pdfquery
>>> pdf = pdfquery.PDFQuery('center.pdf')
>>> pdf.load()
>>> tags = pdf.pq('LTTextBoxHorizontal')
>>> for tag in tags:
...     if tag.attrib['x0'] == '284.09':
...             print tag.text
...
98.67 (49.33)
47.78
68.38
47.70
66.32
51.76
69.68
58.32
60.87
53.85
67.29
39.65
62.08
32.80
53.94
60.91
62.50
63.28
48.23
53.39
61.64
69.42
53.25
50.22
33.16 (66.32)