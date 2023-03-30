#dataset="position_disney_20220610_Fri.csv"
#dataset="position_disney_20220914_radius40.csv"
##dataset="position_disney_20220914_repeat7.csv"
#dataset="position_disney_20220914_radius30.csv"
#dataset="position_disney_20220914_repeat_satsun6_mon1.csv"
#dataset="position_disney_20220914_repeat_satsun6_mon1_radius30.csv"
#dataset="position_disney_satsun_senario_radius10.csv"
###dataset="position_disney_satsun_senario_radius20.csv"
#dataset="position_disney_12montue_senario.csv"
#dataset="position_disney_23tuewed_senario.csv"
#dataset="position_disney_34wedthu_senario.csv"
#dataset="position_disney_45thufri_senario.csv"
dataset="position_disney_56frisat_senario.csv"
##dataset="position_disney_satsun_senario_radius20_repeat.csv"
#dataset="position_disney_satsun_senario_radius30.csv"
#dataset="position_disney_satsun_senario_radius5.csv"


cp $dataset ../../6_associative_memory/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_internal_representation/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_dqn/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task_ir/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task_evaldqn/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task_evalanealing/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task_ir_evaldqn/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_nn_per_task_ir_evalanealing/data/data20220920/position_disney_txt.txt
cp $dataset ../../6_withoutlearning/data/data20220920/position_disney_txt.txt
