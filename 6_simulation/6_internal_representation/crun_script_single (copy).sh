gene=1
g=$(($gene-1))
#alpha=0.1
#alpha=0.5
alpha=0.9
finals=2
#finals=5040
#finals=1000
j=0

#: > learning_input.txt
#: > learning_input_tmp.txt
#: > learning_output0.txt
#: > "scr_output"$j"_foward.txt"
#: > scr_output_learn.txt
#: > "scr_output"$j"_learn.txt"


j=0
#python3 keras_rnn_tdd_ini.py $j > "scr_output"$j"_learn.txt"

#cp foward_input_ini.txt foward_input.txt
##./out_foward $alpha 0 > scr_output_foward.txt



#python3 keras_rnn_tdd_foward.py $j > "scr_output"$j"_foward.txt"

#python3 keras_rnn_tdd_renew_learning_input.py > "scr_output"$j"_foward.txt"

#./out_learn $alpha 0 $gene > scr_output_learn.txt

#python3 keras_rnn_tdd_renew_foward.py > "scr_output"$j"_foward.txt"

#i=1
for i in `seq 1 1 40` #$finals`
do
    python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"
    python3 keras_rnn_tdd_renew_learning_input.py >> "scr_output"$j"_foward.txt"
    ./out_learn $alpha $i $gene >> scr_output_learn.txt
    python3 keras_rnn_tdd_renew_foward.py >> "scr_output"$j"_foward.txt"
done

#python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"




#python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"

#cp learning_input.txt learning_input_tmp.txt

#i=100
####
#for i in `seq 100 100 $finals`
####for i in `seq 100 100 300`
#do
#    ./out_foward $alpha $i >> scr_output_foward.txt

#    python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"

#    ./out_learn $alpha $i $gene >> scr_output_learn.txt

#    python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"

#    cp learning_input.txt learning_input_tmp.txt

#done

