#g++ -o out -I /home/lu/Documents/Disney_darwinian/cppflow-master/include HetNet_toc_supervised_foward.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp -ltensorflow
##g++ -o out HetNet_toc_random.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp
##g++ -o out HetNet_toc.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp

#./out > output.txt

#python3 keras_rnn_tdd_foward.py 0
#python3 keras_rnn_tdd_foward.py 1

g++ -Wall -O0 -o out -I /home/lu/Documents/Disney_darwinian/cppflow-master/include HetNet_toc_supervised.cpp HetNet_toc_BS.cpp HetNet_toc_UE.cpp HetNet_toc_Link.cpp HetNet_toc_Sim.cpp HetNet_toc_func.cpp darwinian_rbm_rap.cpp -ltensorflow

