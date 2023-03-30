grep "sinr, " 6_associative_memory/scr_output_learn.txt > sinr_associative_memory.txt
grep "sinr, " 6_internal_representation/scr_output_learn.txt > sinr_internal_representation.txt
grep "sinr, " 6_dqn/scr_output_learn.txt >  sinr_dqn.txt
grep "sinr, " 6_nn_per_task/scr_output_learn.txt > sinr_nn_per_task.txt
grep "sinr, " 6_nn_per_task/scr_output_learn.txt > sinr_nn_per_task_all.txt
grep "sinr, " 6_nn_per_task_ir/scr_output_learn.txt > sinr_nn_per_task_ir.txt
grep "sinr, " 6_nn_per_task_ir/scr_output_learn.txt > sinr_nn_per_task_ir_all.txt
grep "sinr, " 6_withoutlearning/scr_output_learn.txt > sinr_withoutlearning.txt

zip -r sinr.zip sinr_*.txt
