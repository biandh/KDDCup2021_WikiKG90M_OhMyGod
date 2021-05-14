# TransE-roberta
dglke_train --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 1000 \
--neg_sample_size 1000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 100 \
--is_eval 1 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 0 \
--eval_interval 850 \
--max_step 100000 \
--data_path /home/work/biandonghai/kdd_2021_valid \
--use_valid_train 1 \
--ckpts "ckpts/ComplEx_wikikg90m_concat_d_512_g_10.046_mrr_0.8777506351470947_step_224999"
