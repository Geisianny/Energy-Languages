@echo off

rem Esta é a regra "compile"
copy binarytrees.python3 binarytrees.py

rem Esta é a regra "measure"
@echo Measurement not supported on Windows.

rem Esta é a regra "run"
python binarytrees.py 21

rem Esta é a regra "mem"
@echo Memory measurement not supported on Windows.
