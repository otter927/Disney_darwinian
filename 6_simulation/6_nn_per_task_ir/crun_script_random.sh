gene=1
g=$(($gene-1))
#alpha=0.1
#alpha=0.5
alpha=0.9
finals=5040
#finals=200
#finals=1000

: > learning_input.txt
: > learning_input_tmp.txt
: > learning_output0.txt

j=0
python3 keras_rnn_tdd_ini.py $j

./out_foward $alpha 0 > scr_output_foward.txt

python3 keras_rnn_tdd_foward.py $j > "scr_output"$j"_foward.txt"

./out_learn_random $alpha 0 $gene > scr_output_learn.txt

####python3 keras_rnn_tdd_learn.py $j > "scr_output"$j"_learn.txt"
cp learning_input.txt learning_input_tmp.txt


##i=100
##i=1000
####
for i in `seq 100 100 $finals`
###for i in `seq 100 100 10000`
####for i in `seq 100 100 300`
do
    ./out_foward $alpha $i >> scr_output_foward.txt

    python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"

    ./out_learn_random $alpha $i $gene >> scr_output_learn.txt

####    python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"

    cp learning_input.txt learning_input_tmp.txt

done

