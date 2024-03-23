# Covid-19-impact-dashboard

## Table of Content

### Setting up VM

1. In terminal run
```bash
ssh-keygen -t ed25519 -f ~/.ssh/covid_project_gcp -C cncPomper -b 2048
```

> **_NOTE:_**  `cncPomper` becomes our profile name on later created VM


in order to generate ssh key pair

2. Add generated ssh key to GCP
    1. go to Settings > Metadata > Add ssh key
    2. add generated public key

3. Create VM instance
    1. Region <- europe
    2. Zone <- eurobe-b
    3. Machine type <- e2-standard-4 (4 vCPU, 16GB memory)
    4. Boot disk
        1. OS <- Ubuntu
        2. Version <- Ubuntu 20.04 LTS
        3. Size <- 50 GB

4. Connect to VM
    1. ssh VM
    ```bash
    ssh -i ~/.ssh/covid_project_gcp cncPomper@EXTERNAL_IP_ADDRESS_OF_VM
    ```


## Columns description

## Sources
I have used data from this [dataset](https://www.kaggle.com/datasets/sudalairajkumar/novel-corona-virus-2019-dataset). 