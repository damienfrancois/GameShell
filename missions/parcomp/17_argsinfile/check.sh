#!/usr/bin/env bash -x


if history  | tail -3 | cut -c 8- | grep -s ^touch
then
        echo "Hum... It looks like you used the touch command directly? Please try with the parallel command."
        false
else
    true
fi


if [[ -f expriment.A_1.txt && -f expriment.B_2.txt && -f expriment.A_5.txt && -f expriment.C_4.txt ]]
then
    true
else
        echo "I cannot find all the files... Did you maybe only do a dry-run?"
        false
fi
