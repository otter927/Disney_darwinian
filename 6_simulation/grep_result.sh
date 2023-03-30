grep "reward:" 6_associative_memory/scr_output_learn.txt > reward_associative_memory.txt
grep "best_output:" 6_associative_memory/scr_output_learn.txt > reward_associative_action.txt
grep "output_vector_" 6_associative_memory/scr_output_learn.txt > reward_associative_output_vector.txt
grep "inside" 6_associative_memory/scr_output_learn.txt > reward_associative_insidebs.txt
grep "ans.bs" 6_associative_memory/scr_output_learn.txt > reward_associative_bs.txt
grep "sinr," 6_associative_memory/scr_output_learn.txt > reward_associative_sinr.txt
#grep "reward:" 6_associative_memory_tmp/scr_output_learn.txt > reward_associative_memory_tmp.txt
grep "reward:" 6_internal_representation/scr_output_learn.txt > reward_internal_representation.txt
grep "best_output:" 6_internal_representation/scr_output_learn.txt > reward_internal_action.txt
grep "output_vector_" 6_internal_representation/scr_output_learn.txt > reward_internal_output_vector.txt
grep "inside" 6_internal_representation/scr_output_learn.txt > reward_internal_insidebs.txt
grep "ans.bs" 6_internal_representation/scr_output_learn.txt > reward_internal_bs.txt
grep "sinr," 6_internal_representation/scr_output_learn.txt > reward_internal_sinr.txt
cp 6_dqn/learning_reward.txt reward_dqn.txt
grep "best_output:" 6_dqn/scr_output_learn.txt > reward_dqn_action.txt
grep "inside" 6_dqn/scr_output_learn.txt > reward_dqn_insidebs.txt
grep "ans.bs" 6_dqn/scr_output_learn.txt > reward_dqn_bs.txt
grep "sinr," 6_dqn/scr_output_learn.txt > reward_dqn_sinr.txt
grep "reward:" 6_nn_per_task/scr_output_learn.txt > reward_nn_per_task.txt
grep "reward--" 6_nn_per_task/scr_output_learn.txt > reward_nn_per_task_all.txt
grep "reward:" 6_nn_per_task_ir/scr_output_learn.txt > reward_nn_per_task_ir.txt
grep "reward--" 6_nn_per_task_ir/scr_output_learn.txt > reward_nn_per_task_ir_all.txt
cp 6_nn_per_task_evaldqn/learning_reward.txt reward_nn_per_task_evaldqn_learning_reward.txt
cp 6_nn_per_task_evaldqn/log_actions.txt reward_nn_per_task_evaldqn_log_actions.txt
cp 6_nn_per_task_evalanealing/learning_reward.txt reward_nn_per_task_evalanealing_learning_reward.txt
cp 6_nn_per_task_evalanealing/log_actions.txt reward_nn_per_task_evalanealing_log_actions.txt
grep "best_output:" 6_nn_per_task_evalanealing/scr_output_learn.txt > reward_nn_per_task_evalanealing_action.txt
grep "output_vector_" 6_nn_per_task_evalanealing/scr_output_learn.txt > reward_nn_per_task_evalanealing_output_vector.txt
grep "inside" 6_nn_per_task_evalanealing/scr_output_learn.txt > reward_nn_per_task_evalanealing_insidebs.txt
grep "ans.bs" 6_nn_per_task_evalanealing/scr_output_learn.txt > reward_nn_per_task_evalanealing_bs.txt
grep "sinr," 6_nn_per_task_evalanealing/scr_output_learn.txt > reward_nn_per_task_evalanealing_sinr.txt


cp 6_nn_per_task_ir_evaldqn/learning_reward.txt reward_nn_per_task_ir_evaldqn_learning_reward.txt
cp 6_nn_per_task_ir_evaldqn/log_actions.txt reward_nn_per_task_ir_evaldqn_log_actions.txt
cp 6_nn_per_task_ir_evalanealing/learning_reward.txt reward_nn_per_task_ir_evalanealing_learning_reward.txt
cp 6_nn_per_task_ir_evalanealing/log_actions.txt reward_nn_per_task_ir_evalanealing_log_actions.txt
grep "best_output:" 6_nn_per_task_ir_evalanealing/scr_output_learn.txt > reward_nn_per_task_ir_evalanealing_action.txt
grep "output_vector_" 6_nn_per_task_ir_evalanealing/scr_output_learn.txt > reward_nn_per_task_ir_evalanealing_output_vector.txt
grep "inside" 6_nn_per_task_ir_evalanealing/scr_output_learn.txt > reward_nn_per_task_ir_evalanealing_insidebs.txt
grep "ans.bs" 6_nn_per_task_ir_evalanealing/scr_output_learn.txt > reward_nn_per_task_ir_evalanealing_bs.txt
grep "sinr," 6_nn_per_task_ir_evalanealing/scr_output_learn.txt > reward_nn_per_task_ir_evalanealing_sinr.txt

grep "reward:" 6_withoutlearning/scr_output_learn.txt > reward_withoutlearning.txt
grep "best_output:" 6_withoutlearning/scr_output_learn.txt > reward_withoutlearning_action.txt
grep "inside" 6_withoutlearning/scr_output_learn.txt > reward_withoutlearning_insidebs.txt
grep "ans.bs" 6_withoutlearning/scr_output_learn.txt > reward_withoutlearning_bs.txt
grep "sinr," 6_withoutlearning/scr_output_learn.txt > reward_withoutlearning_sinr.txt

zip -r result.zip reward_*.txt
