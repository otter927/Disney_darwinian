grep "sinr_index" 6_associative_memory/scr_output_learn.txt > sinrindex_associative_memory.txt
grep "sinr_index" 6_internal_representation/scr_output_learn.txt > sinrindex_internal_representation.txt
grep "sinr_index" 6_dqn/scr_output_learn.txt >  sinrindex_dqn.txt
grep "sinr_index" 6_nn_per_task/scr_output_learn.txt > sinrindex_nn_per_task.txt
grep "sinr_index" 6_nn_per_task/scr_output_learn.txt > sinrindex_nn_per_task_all.txt
grep "sinr_index" 6_nn_per_task_ir/scr_output_learn.txt > sinrindex_nn_per_task_ir.txt
grep "sinr_index" 6_nn_per_task_ir/scr_output_learn.txt > sinrindex_nn_per_task_ir_all.txt
grep "sinr_index" 6_withoutlearning/scr_output_learn.txt > sinrindex_withoutlearning.txt

zip -r sinr_index.zip sinrindex_*.txt
