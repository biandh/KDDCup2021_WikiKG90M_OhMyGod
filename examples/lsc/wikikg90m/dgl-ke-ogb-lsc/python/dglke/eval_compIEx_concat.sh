# TransE-shallow
cd /home/work/biandonghai 
source ./.bashrc
cd /home/work/biandonghai/dglke

dglke_eval --model_name ComplEx \
--hidden_dim 512 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid --test -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--dtype 32 \
--is_eval 1 \
--batch_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name concat  \
--log_interval 1000 \
--eval_interval 50000 \
--max_step 1000000 \
--data_path /home/work/biandonghai/kdd_2021 \
--save_path "/home/work/biandonghai/dglke/ckpts/ComplEx_wikikg90m_concat_d_512_g_10.036_mrr_0.9999876618385315_step_8499_model_valid"
