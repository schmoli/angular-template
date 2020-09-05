#!/bin/bash

echo "Renaming project 'angular-template'"
echo "New Project Name (my-angular-app)?"
read updated
if [ -z "$updated" ]
then
  updated=my-angular-app
fi

echo "Renaming project to '$updated'."
#git grep -lv angular-template ':(exclude)rename.sh' | xargs -0 sed -i '' -e "s/angular-template/$updated/g"
git grep -l 'angular-template' ':(exclude)rename.sh' | xargs sed -i "s/angular-template/$updated/g"
