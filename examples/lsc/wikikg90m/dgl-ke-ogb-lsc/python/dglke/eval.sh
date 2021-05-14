# TransE-shallow
cd /home/work/biandonghai 
source ./.bashrc
cd /home/work/biandonghai/dglke

dglke_eval --model_name TransE_l2 \
--hidden_dim 768 --gamma 10 --lr 0.1 --regularization_coef 1e-9 \
--valid --test -adv --mix_cpu_gpu --num_proc 1 --num_thread 1 \
--dtype 32 \
--batch_size 2000 \
--batch_size_eval 200 \
--print_on_screen \
--encoder_model_name shallow  \
--log_interval 1000 \
--eval_interval 50000 \
--max_step 10000000 \
--data_path /home/work/biandonghai/kdd_2021 \
--save_path "/home/work/biandonghai/dglke/ckpts/TransE_l2_wikikg90m_shallow_d_768_g_10.010_mrr_0.8514670729637146"
