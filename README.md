# 📘 Báo Cáo Thực Tập - Nhóm 4

**📅 Thời gian thực hiện**: 2024  
**👩‍💻 Sinh viên thực hiện**: Đinh Lê Quỳnh Phương và Nhóm 4  
**🏫 Trường**: Đại học Y tế Công cộng  
**💼 Chủ đề**: Hệ thống quản lý thông tin hộ dân – thực hành cơ sở dữ liệu & phân tích dữ liệu bằng Power BI, SQL Server và C#

---

## 📁 Cấu trúc thư mục dự án

```plaintext
thuc-tap-1/
├── Báo-cáo-thực-tập-nhóm-4.docx / .pdf # Báo cáo tổng hợp thực tập
├── Du lieu thuc hanh_ Nhóm 4 Thuctap1.xlsx # Dữ liệu thực tế
├── *.sql # Câu lệnh tạo cơ sở dữ liệu & truy vấn
├── *.pbix # File Power BI phân tích trực quan
├── ImportData/ # Dự án C# đọc và xử lý file Excel
├── ImportDataC#(ReadExcelFile)/ # Dự án C# mở rộng
```

---

## 🔍 Mô tả nội dung

### 1. 📊 **Phân tích dữ liệu với Power BI**
- File: `Nhom4thuctap1.pbix`
- Tạo báo cáo trực quan về:
  - Số lượng hộ dân theo địa bàn
  - Tỷ lệ tử vong theo năm, giới tính
  - Thống kê nhân khẩu học
- Kết nối dữ liệu từ Excel và SQL

### 2. 🗄️ **Thiết kế cơ sở dữ liệu SQL**
- File: `Thuctap1_Nhóm4.sql` & `Nhom4_Thuctap1KHDLchinhthuc.sql`
- Bao gồm:
  - Tạo bảng `VUNG`, `TINH`, `HUYEN`, `XA`, `DIABAN`, `THONGTINHO`, `THANHVIENTRONGHO`, `THONGTINTUVONG`
  - Thiết lập khóa chính, khóa ngoại
  - Stored procedures, functions, cursor, trigger và transaction
  - Tạo view `VIEW_THONG_KE_TU_VONG` thống kê tử vong

### 3. 🖥️ **Import dữ liệu bằng ngôn ngữ C#**
- Dự án `ImportData` và `ImportDataC#(ReadExcelFile)`
- Chức năng:
  - Đọc file Excel
  - Xử lý dữ liệu
  - Chuẩn bị dữ liệu để nhập vào SQL Server

### 4. 📑 **Báo cáo thực tập**
- Tóm tắt toàn bộ quá trình triển khai từ thiết kế cơ sở dữ liệu đến phân tích dữ liệu
- Trình bày logic hệ thống, biểu đồ ERD, sơ đồ phân cấp

---

## ✅ Công nghệ sử dụng

- **SQL Server**: Quản lý và truy vấn dữ liệu
- **Power BI**: Trực quan hóa dữ liệu
- **C# .NET**: Xử lý dữ liệu từ Excel
- **Excel**: Dữ liệu thô đầu vào
- **Microsoft Word/PDF**: Báo cáo

---

## 💡 Kết quả nổi bật

- Hệ thống hóa cơ sở dữ liệu quản lý dân cư từ xã đến hộ
- Phân tích và trực quan hóa chi tiết về tử vong, nhân khẩu
- Vận dụng được đầy đủ kiến thức học phần: SQL nâng cao, lập trình C#, Power BI

---

## 📬 Liên hệ

**Sinh viên thực hiện**: Đinh Lê Quỳnh Phương  
**Email**: dinhlequynhphuong@gmail.com

---

📎 *Dự án phục vụ học phần Thực Tập – không sử dụng vào mục đích thương mại.*
