#------Train-------
# TransE-shallow
#model A
dglke_train --model_name TransE_l2 \
--hidden_dim 768 --gamma 10 --lr 0.2 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--use_relation_weight 0 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name shallow  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 50000 \
--max_step 10000000 \
--data_path kdd_2021 \


#model B
dglke_train --model_name TransE_l2 \
--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--use_relation_weight 0 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name shallow  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 50000 \
--max_step 10000000 \
--data_path kdd_2021 \
--seed 1

#ComplEx-concat
#model C
dglke_train --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \

#model D
dglke_train --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \
--seed 1 \

#model E
dglke_train --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \

#model F
dglke_train --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \
--seed 77 \

#DistMult-concat
#model G
dglke_train --model_name DistMult \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \
--seed 13 \

#model H
dglke_train --model_name DistMult \
--hidden_dim 512 --gamma 20 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \
--seed 47 \
--loss_genre Hinge \

#SimplE-concat
#model I
dglke_train --model_name SimplE \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -pw --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 2000 \
--neg_sample_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--is_eval 1 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 25000 \
--max_step 1000000 \
--data_path kdd_2021 \
--seed 77 \


#strategy
cd dgl-ke-ogb-lsc/python/dglke/strategy/
python get_val_candidate_freq.py
python get_test_candidate_freq.py

#-------Eval-------
# TransE-shallow

#dglke_eval --model_name TransE_l2 \
#--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
#--valid --test -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
#--dtype 32 \
#--batch_size 2000 \
#--batch_size_eval 200 \
#--print_on_screen \
#--encoder_model_name shallow  \
#--log_interval 1000 \
#--eval_interval 50000 \
#--max_step 10000000 \
#--data_path kdd_2021 \
#--save_path "ckpts/model1_TransE_l2_wikikg90m_shallow_d_768_g_10.015_mrr_0.8819052577018738/"

#ComplEx-concat

#dglke_eval --model_name ComplEx \
#--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
#--valid --test -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
#--dtype 32 \
#--is_eval 1 \
#--batch_size 2000 \
#--batch_size_eval 200 \
#--print_on_screen \
#--encoder_model_name concat  \
#--log_interval 1000 \
#--eval_interval 50000 \
#--max_step 1000000 \
#--data_path kdd_2021 \
#--save_path "ckpts/ComplEx_wikikg90m_concat_d_512_g_10.022_mrr_0.885155200958252/"


#model ensemble, Use grid search to get higher score weights
python grid_search_weight.py

#use grid_search weight + val_always_correct_entity_gt_5.pkl file on val dataset ---> MRR:0.9781
python model_ensemble_val.py

#predict test dataset
python model_ensemble_test.py


