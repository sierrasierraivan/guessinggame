README.md: guessinggame.sh
	echo # Proyecto Guessing Game > README.md
	echo. >> README.md
	powershell -Command "Get-Date" >> README.md
	echo. >> README.md
	powershell -Command "(Get-Content guessinggame.sh).Count" >> README.md