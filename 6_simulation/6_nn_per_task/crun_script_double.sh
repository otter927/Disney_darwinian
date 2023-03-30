gene=2
g=$(($gene-1))
#alpha=0.1
#alpha=0.5
alpha=0.9
finals=100
#finals=5040
#finals=1000

: > learning_input.txt
: > learning_input_tmp.txt
: > learning_output0.txt
: > scr_output_learn.txt
: > scr_output_foward.txt
for j in `seq 0 $g`
do
    : > "scr_output"$j"_foward.txt"
    : > "scr_output"$j"_learn.txt"
done


for j in `seq 0 $g`
do
    python3 keras_rnn_tdd_ini.py $j > "scr_output"$j"_learn.txt"
done
cp foward_input_ini.txt foward_input.txt

for k in `seq 0 100 $finals`
do

###i=0
    fend=$(( $k+99 ))
    for i in `seq $k 1 $fend`
    do
        for j in `seq 0 $g`
        do
            python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"
        done
        python3 keras_rnn_tdd_renew_learning_input.py >> "scr_output_foward.txt"
        ./out_learn $alpha $i $gene >> scr_output_learn.txt
        python3 keras_rnn_tdd_renew_foward.py >> "scr_output_foward.txt"
    done


for j in `seq 0 $g`
do
    python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"
done
done


