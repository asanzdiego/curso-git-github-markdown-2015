#! /bin/bash

echo "**************************"
echo "* PUSH CHANGES TO GITHUB *"
echo "**************************"

git status

read -p "Do you want to add files? [y|*N*]: " OPTION

if [ "$OPTION" == "y" ]; then

    git add .
fi

git status

read -p "Do you want to commit? [y|*N*]: " OPTION

if [ "$OPTION" == "y" ]; then

    read -p "Write the commit message: " MESSAGE

    git commit -m "$MESSAGE" && \
    git push
fi
