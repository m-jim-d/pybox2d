@ECHO off

:: script for publishing pybox2d files to Github repository (...)

:: in a powershell, run command:  .\publish.bat 

git add .
git commit -am "updated readme"
git push origin master

:: Example of forcing an updated description without committing new files.
:: git add .
:: git commit --amend -m "Fix contact normal rendering: correct Y-flip, wrap position in b2Vec2, iterate only valid manifold points"
:: git push origin master --force

:: Commands for generating a new release. Note you must also update release_number in setup.py. 
:: git tag v2.3.13
:: git push origin v2.3.13

:: Delete the old tag locally and remotely
:: git tag -d v2.3.13
:: git push origin --delete v2.3.13