# TransE-roberta
dglke_train --model_name ComplEx \
--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--batch_size 10 \
--neg_sample_size 1 \
--batch_size_eval 2 \
--print_on_screen \
--encoder_model_name shallow  \
--log_interval 100 \
--is_eval 0 \
--save_entity_emb 1 \
--save_rel_emb 1 \
--save_mlp 1 \
--use_mmap 1 \
--eval_interval 500 \
--max_step 1000 \
--data_path /home/work/biandonghai/kdd_2021_small_example \
