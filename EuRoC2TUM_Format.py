import os

path = input("Input EuRoC Dataset camera path.(ex: ./mav0/cam0) :").rstrip("/")

# path = "./MH_01_easy/mav0/cam0/".rstrip("/")
path = os.path.join(path)
print('Path:',path)
# camera = os.path.basename(path)
# print("最後一個資料夾名稱:", camera)
datacsvpath = os.path.join(path,'data.csv')
TUMFMTpath = os.path.join('rgb.txt')
count = 0
with open(datacsvpath,'r', encoding='utf-8') as input_file:
    with open(TUMFMTpath,'w', encoding='utf-8') as output_file:
        for line in input_file:
            if count < 1:
                count+=1
                continue
            linelist = line.split(',')
            print('linelist[0]:',linelist[0])
            timstmp = float(linelist[0]) / 1e9
            timstmp = str(f"{timstmp:.6f}")
            filename = linelist[-1]
            output = timstmp+' '+os.path.join('data',filename)
            output_file.write(output)
            

