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
Bảng Giaovien (#magv, tengv)
Bảng Monhoc (#mamon, tenmon)
Bảng Phonghoc (#maphong, tenphong)
Bảng Lop (#malop, tenlop, @magv)
Bảng Thoikhoabieu (#stt, @magv, @malop, @mamon, @maphong, thu, tietbatdau, sotiet, giovao, giora, ngay)
Từ các bảng trên, ta có thể truy vấn ra thông tin gồm 4 cột: tengv, tenmon, giovao, giora
### Xây dựng các bảng
