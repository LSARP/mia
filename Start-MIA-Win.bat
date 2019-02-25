
if exist C:\Users\%USERNAME%\AppData\Local\Continuum\miniconda3\Scripts\activate (
    call  C:\Users\%USERNAME%\AppData\Local\Continuum\miniconda3\Scripts\activate mia
) else if exist C:\ProgramData\Miniconda3\Scripts\activate (
    call C:\ProgramData\Miniconda3\Scripts\activate mia
) else (
    echo Could not find anaconda's script 'activate'.
    echo Please, make sure it is in the PATH.
    call activate mia
)

cd C:\mia
python mia.pyw