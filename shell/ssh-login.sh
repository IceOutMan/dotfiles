#!/bin/bash

# 检查是否提供了文件名作为参数
# ALI_YUN host name pass
if [ $# -ne 1 ]; then
    echo "用法: $0 <文件名>"
    exit 1
fi

# 检查文件是否存在
if [ ! -f "$1" ]; then
    echo "文件不存在: $1"
    exit 1
fi

# 读取文件并存储每行的 key
keys=()
host_list=()
ssh_name_list=()
ssh_name_list=()
ssh_pass_list=()
while IFS= read -r line; do
    key=$(echo "$line" | cut -d ' ' -f 1)
    ssh_host=$(echo "$line" | cut -d ' ' -f 2)
    ssh_name=$(echo "$line" | cut -d ' ' -f 3)
    ssh_pass=$(echo "$line" | cut -d ' ' -f 4)

    keys+=("$key")
    ssh_host_list+=("$ssh_host")
    ssh_name_list+=("$ssh_name")
    ssh_pass_list+=("$ssh_pass")
done < "$1"

# 显示可用的 key
echo "可用的 keys:"
for ((i=0; i<${#keys[@]}; i++)); do
    echo "$i: ${keys[$i]} ${ssh_host_list[$i]} ${ssh_name_list[$i]} ${ssh_pass_list[$i]}"
done

# 提示用户选择 key
read -p "请选择一个 key 的编号: " choice

# 检查选择是否有效
if ! [[ "$choice" =~ ^[0-9]+$ ]] || [ "$choice" -lt 0 ] || [ "$choice" -ge "${#keys[@]}" ]; then
    echo "无效的选择"
    exit 1
fi

# 根据选择打印对应的 value
selected_key="${keys[$choice]}"
selected_ssh_host="${ssh_host_list[$choice]}"
selected_ssh_name="${ssh_name_list[$choice]}"
selected_ssh_pass="${ssh_pass_list[$choice]}"

# selected_value=$(grep "^$selected_key " "$1" | cut -d ' ' -f 2-)
echo "选择的 key: $selected_key"
# echo "对应的 ssh_host: $selected_ssh_host"
# echo "对应的 ssh_name: $selected_ssh_name"
# echo "对应的 ssh_pass: $selected_ssh_pass"

ssh $selected_ssh_name@$selected_ssh_host

# expect {
#     "$selected_ssh_name*password:*" {
#         send "$selected_ssh_pass\r";
#         exp_continue;
#     }
# }
