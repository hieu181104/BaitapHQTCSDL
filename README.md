# Bài tập 04 của sinh viên: K225480106019 - Nguyễn Trung Hiếu - Môn Hệ quản trị cơ sở dữ liệu
## BÀI TẬP VỀ NHÀ 04 - MÔN HỆ QUẢN TRỊ CSDL:
## Yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
## Các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình, gõ text mô tả cho ảnh đó
## Gợi ý:
- Sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
- Tạo các bảng với struct phù hợp
- Insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)
## Deadline: 15/4/2025
## Bài làm
### Thiết kế cơ sở dữ liệu
Em sẽ xây dựng các bảng sau:
- Bảng Giaovien (#magv, tengv)
- Bảng Monhoc (#mamon, tenmon)
- Bảng Phonghoc (#maphong, tenphong)
- Bảng Lop (#malop, tenlop, @magv)
- Bảng Thoikhoabieu (#stt, @magv, @malop, @mamon, @maphong, thu, tietbatdau, sotiet, giovao, giora, ngay)
#### Từ các bảng trên, ta có thể truy vấn ra thông tin gồm 4 cột: tengv, tenmon, giovao, giora
### Xây dựng các bảng
#### Bảng Giaovien
Xây dựng bảng Giaovien với trường magv đặt làm PK:
![image](https://github.com/user-attachments/assets/f1203dfe-5cd9-45e6-9d79-462d7e3f8e19)
#### Bảng Monhoc
Xây dựng bảng Monhoc với trường mamon đặt làm PK:
![image](https://github.com/user-attachments/assets/0f424f67-e3d9-4c02-a034-c709fbafc0c1)
Để mỗi một tên môn học chỉ tương ứng một mã môn học, ta đặt Index cho trường tenmon:
![image](https://github.com/user-attachments/assets/ba9ae00c-6a35-44ad-a006-b619302d122d)
#### Bảng Phonghoc
Xây dựng bảng Phonghoc với trường maphong làm PK:
![image](https://github.com/user-attachments/assets/8cda683f-fcce-420a-b62a-5e24de1fe0c8)
Để mỗi tên phòng chỉ tương ứng với một mã phòng, đặt Index cho trường tenphong:
![image](https://github.com/user-attachments/assets/d0a37911-6ac7-4144-b310-e51a06888f18)
#### Bảng Lop
Xây dựng bảng Lop với trường malop đặt làm PK, magv làm FK:
![image](https://github.com/user-attachments/assets/20e7c0b3-3bf0-44f2-bb12-ace05b9fb511)
![image](https://github.com/user-attachments/assets/39f2043a-9743-4e37-b1c6-8a9d8a2c2a28)
![image](https://github.com/user-attachments/assets/5aa4080f-ce99-4b8b-a86f-737008235879)
#### Bảng Thoikhoabieu
Xây dựng bảng Thoikhoabieu với trường stt làm PK, các trường FK gồm: magv, malop, mamon, maphong:
![image](https://github.com/user-attachments/assets/47c0b1c6-fcee-43bb-9713-64905c1a0bfd)
![image](https://github.com/user-attachments/assets/faa2ce4c-8100-4514-83a1-fc724a0fb9b3)
![image](https://github.com/user-attachments/assets/74c2725d-c36d-4d62-94ee-9c066173586f)
![image](https://github.com/user-attachments/assets/c139498c-ceca-4f4a-9731-46b3bb9deacf)
![image](https://github.com/user-attachments/assets/4008b5d9-be21-4d04-987d-94af28201e8d)
#### Tạo thêm các CK cho bảng:
![image](https://github.com/user-attachments/assets/bc731b81-a98b-4e74-a929-5cf914e7ed97)
![image](https://github.com/user-attachments/assets/705f5a01-1660-46cf-afa5-e41ac84e9fa8)
![image](https://github.com/user-attachments/assets/eea2edac-ee0f-4666-abd2-f21c1a7afa8a)
![image](https://github.com/user-attachments/assets/e92fb4f1-8261-44d0-9a08-735d74fe18b9)
### Thêm dữ liệu vào bảng
