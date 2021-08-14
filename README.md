# auto-ossec
Automation Agent OSSEC installing tool 

Hướng dẫn cài đặt: 
Bước 1: Cài đặt python và pip

```sudo apt install python python-pip -y```

Bước 2: Tiến hành tải  https://github.com/security-kma/auto-ossec.git

```git clone https://github.com/security-kma/auto-ossec.git``` (Nếu server không có git thì tải bằng : apt install git)

Bước 3: Cài đặt gói phụ thuộc

```cd /auto-ossec```

```pip install -r requirements.txt```

Bước 4: Chạy tool

- Nếu chưa cài ossec agent, sử dụng tùy chọn **url**  để  tự động cài

```./auto_ossec.bin <server_ip> url=https://github.com/ossec/ossec-hids/archive/3.6.0.tar.gz```

- Nếu server đã cài ossec agent 

```./auto_ossec.bin <server_ip>```
