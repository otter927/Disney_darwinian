g++ -o out_foward -I /home/lu/Documents/Disney_darwinian/cppflow-master/include HetNet_toc_supervised_foward.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp -ltensorflow

g++ -Wall -O0 -o out_learn_random -I /home/lu/Documents/Disney_darwinian/cppflow-master/include HetNet_toc_random.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp -ltensorflow

##i=0
#for i in `seq 0 1`
#do
#    python3 keras_rnn_tdd_ini.py $i
#done

