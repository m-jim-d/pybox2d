@ECHO off

:: script for publishing pybox2d files to Github repository (...)

git add .

git commit -am "build.yml updated"
git push origin master

:: git commit --amend -m "Fix contact normal rendering: correct Y-flip, wrap position in b2Vec2, iterate only valid manifold points"
:: git push origin master --force