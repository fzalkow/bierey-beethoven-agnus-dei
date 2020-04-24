import os

ORDER = ['floete1', 'floete2', 'oboe1', 'oboe2', 'klarinette1', 'klarinette2', 'fagott1', 'fagott2',
         'horn1', 'horn2',
         'violine1', 'violine2', 'viola', 'cello', 'bass']

LILY = '/usr/local/lilypond_dev/bin/lilypond'

if __name__ == '__main__':
    files = []
    for directory in ORDER:
        cur_file = os.path.join(directory, 'AgnusDei')
        assert os.path.exists(cur_file + '.ly'), cur_file + '.ly'

        cur_cmd = f'{LILY} -o {cur_file} -ddelete-intermediate-files {cur_file}.ly'
        os.system(cur_cmd)
        files.append(cur_file + '.pdf')

    cmd = 'gs -dNOPAUSE -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 ' + \
          '-dPDFSETTINGS=/printer -sOUTPUTFILE=AgnusDei_Orchesterstimmen.pdf -dBATCH {}'.format(' '.join(files))
    os.system(cmd)
