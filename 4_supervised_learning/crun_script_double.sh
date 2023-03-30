gene=2
g=$(($gene-1))
#alpha=0.1
#alpha=0.5
alpha=0.9
finals=5040
#finals=1000

: > learning_input.txt
: > learning_input_tmp.txt

for j in `seq 0 $g`
do
    : > "learning_output"$j".txt"
done



##j=0
for j in `seq 0 $g`
do
    python3 keras_rnn_tdd_ini.py $j > "scr_output"$j"_learn.txt"
done



./out_foward $alpha 0 > scr_output_foward.txt

for j in `seq 0 $g`
do
    python3 keras_rnn_tdd_foward.py $j > "scr_output"$j"_foward.txt"
done

./out_learn $alpha 0 $gene > scr_output_learn.txt

for j in `seq 0 $g`
do
    python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"
done

cp learning_input.txt learning_input_tmp.txt

##i=100
##
for i in `seq 100 100 $finals`
##for i in `seq 100 100 300`
do
    ./out_foward $alpha $i >> scr_output_foward.txt

    for j in `seq 0 $g`
    do
        python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"
    done

    ./out_learn $alpha $i $gene >> scr_output_learn.txt

    for j in `seq 0 $g`
    do
        python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"
    done

    cp learning_input.txt learning_input_tmp.txt

done

