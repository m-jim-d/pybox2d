@ECHO off

:: script for publishing pybox2d files to Github repository (...)

git add .
git commit -am "updated the release number in setup.py"
git push origin master

:: Example of forcing an updated description without committing new files.
:: git add .
:: git commit --amend -m "Fix contact normal rendering: correct Y-flip, wrap position in b2Vec2, iterate only valid manifold points"
:: git push origin master --force

:: Commands for generating a new release. Note you must also update setup.py for the 
:: git tag v2.3.13
:: git push origin v2.3.13