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
Truy cập trang web TMS.tnut.edu.vn rồi lấy dữ liệu vào excel, ở đây em lấy dữ liệu thời khóa biểu tuần 33:
![image](https://github.com/user-attachments/assets/2c1601c1-9fec-45af-8655-d9400493ed02)
#### Sau khi lọc các thông tin cần thiết, ta sẽ thu được dữ liệu 3nf thêm vào các bảng:
#### Bảng Giaovien:
![image](https://github.com/user-attachments/assets/9f40550a-a6b1-4691-b99a-9b36fe67d975)
#### Bảng Monhoc:
![image](https://github.com/user-attachments/assets/0d31b964-8ed5-4537-a92f-4ba9b14d26a9)
#### Bảng Phonghoc:
![image](https://github.com/user-attachments/assets/44fb6a94-147b-46bf-b9e7-7d136bdd9319)
#### Bảng Lop:
![image](https://github.com/user-attachments/assets/75acc7f8-9977-4b22-91b5-5712fc2f0adf)
#### Bảng Thoikhoabieu:
![image](https://github.com/user-attachments/assets/6b31ecb9-f36a-4d26-ae05-ab0f03758382)
### Truy vấn thông tin
#### Để trả lời câu hỏi trong khoảng thời gian từ datetime1 đến datetime2 có những giáo viên nào bận giảng dạy, ta sử dụng các dòng lệnh sau:
```sql
DECLARE @datetime1 TIME = '2025-4-14 09:00';
DECLARE @datetime2 TIME = '2025-4-14 12:00';

SELECT 
    gv.tengv AS [Họ tên giáo viên],
    mh.tenmon AS [Môn dạy],
    tkb.giovao AS [Giờ vào],
    tkb.giora AS [Giờ ra]
FROM 
    Thoikhoabieu tkb
JOIN 
    Giaovien gv ON tkb.magv = gv.magv
JOIN 
    Monhoc mh ON tkb.mamon = mh.mamon
WHERE 
    CAST(tkb.giovao AS TIME) BETWEEN @datetime1 AND @datetime2;
```
#### Kết quả sau khi chạy lệnh:
![image](https://github.com/user-attachments/assets/3d36dc4a-4d01-4a35-b3bb-d6b6c3323fa6)
#### Với kết quả truy vấn được, có thể thấy trong khoảng thời gian từ 9:00 tới 12:00 những giáo viên: N.V.Huy, Đ.D.Cốp, T.T.N.Linh, T.T.Thanh, N.V.Tính, Đ.T.Hiên và N.T.Linh đang bận giảng dạy.
