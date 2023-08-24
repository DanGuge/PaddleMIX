model_item=stable_diffusion-098b_pretrain
model=stable_diffusion
bs_item=144
fp_item=bf16
run_mode=DP
device_num=N1C8
max_epochs=200
num_workers=0

# get data
bash ./test_tipc/dygraph/dp/${model}/benchmark_common/prepare.sh
# run
bash ./test_tipc/dygraph/dp/${model}/benchmark_common/run_benchmark.sh ${model_item} ${bs_item} ${fp_item} ${run_mode} ${device_num} ${max_epochs} ${num_workers} 2>&1;