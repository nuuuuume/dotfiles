#!/bin/sh

DOTDIR=${HOME}/dotfiles

cd ${DOTDIR}
for i in `ls -d .*`
do
    if [ ${i} = "." ] || [ ${i} = ".." ];
    then
        continue
    fi
    ln -s ${i} ${HOME}/${i}
done
