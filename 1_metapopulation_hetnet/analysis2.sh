file_name="log_darwinian_disney.txt"

grep throu $file_name > throughput.txt
grep reward $file_name | grep MBS > reward_MBS.txt
grep reward $file_name | grep SBS > reward_SBS.txt
#grep "actions:" $file_name | grep MBS > action_MBS.txt
#grep "actions:" $file_name | grep SBS > action_SBS.txt
#grep "action-mbs-sbs:" $file_name > action_MBS_SBS.txt
grep "inside_UE" $file_name > inside_UE.txt
grep "connecting_UE" $file_name > connecting_UE.txt
grep "datalist_UE" $file_name > datalist_UE.txt
#grep "inside_BS" $file_name | grep Ped9 > tmp9.txt
#grep "connecting_BS" $file_name | grep Ped9 > tmp10.txt
grep "inside_BS" $file_name > inside_BS.txt
grep "connecting_BS" $file_name > connecting_BS.txt
#grep move $file_name | grep Veh10 > move_Ped99.txt
grep move $file_name > move_Ped99.txt
grep "new_BS" $file_name | grep Veh10 > new_BS_Ped99.txt
grep plot $file_name > plot_bs_xy.txt
#grep "timer" $file_name > timer.txt
grep "prob_ped" $file_name > prob_ped.txt


zip -r output.zip throughput.txt reward_MBS.txt reward_SBS.txt action_MBS.txt action_SBS.txt action_MBS_SBS.txt inside_UE.txt connecting_UE.txt datalist_UE.txt inside_BS.txt connecting_BS.txt move_Ped99.txt plot_bs_xy.txt new_BS_Ped99.txt prob_ped.txt


#grep throu log_MVG_DRL_mob.txt > tmp.txt
#grep reward log_MVG_DRL_mob.txt | grep MBS > tmp2.txt
#grep reward log_MVG_DRL_mob.txt | grep SBS > tmp3.txt
#grep action log_MVG_DRL_mob.txt | grep MBS > tmp4.txt
#grep action log_MVG_DRL_mob.txt | grep SBS > tmp5.txt

#zip -r output.zip tmp*.txt
