cd %~1
del /s *.uexp, *.ubulk
for /r %%g in (*.uasset) do (
	type NUL>%%~dpng.uasset
)