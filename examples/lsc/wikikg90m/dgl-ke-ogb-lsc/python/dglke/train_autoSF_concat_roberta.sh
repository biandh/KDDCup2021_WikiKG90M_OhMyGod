# TransE-roberta
dglke_train --model_name AutoSF \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-8 \
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
--max_step 10000000 \
--data_path /home/work/biandonghai/kdd_2021 \
