## Script to SSH Server from Inventory List

What is the functionality of this Script?

#### 1) Check if the format of the input is correct or not.
#### 2) Check if the input IP is present or not. 

## How to access the server using this script

### Step # 1: 
Place the script in the directory where that inventory list is present or edit the file path inside the script.sh file 
##### Here: *INVENTORYFILEPATH=./inventory.yaml*

### Step # 2: 
Run below command to access any of the server either by NAME or IP ( It will directly pick BastionHost ) and SSH to the server.

### If you want to use ip

```bash
bash script.sh IP
```
```bash
./script.sh IP
```

##### For example: 
```bash
bash script.sh 192.168.0.1
```

### If you want to use server name instead of ip.
```bash
bash script.sh server
```

##### For example: 
```bash 
bash script.sh server1
```

