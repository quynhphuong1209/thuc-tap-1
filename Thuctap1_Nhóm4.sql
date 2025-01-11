CREATE DATABASE Thuctap1
GO

USE Thuctap1
GO

---///TABLE [dbo].[VUNG]
-- Alter columns to NOT NULL
ALTER TABLE [dbo].[VUNG]
ALTER COLUMN Mavung NVARCHAR(255) NOT NULL;

-- Add PK Mavung
ALTER TABLE [dbo].[VUNG]
ADD PRIMARY KEY (Mavung);

---///TABLE [dbo].[TINH]
-- Alter columns to NOT NULL
ALTER TABLE [dbo].[TINH]
ALTER COLUMN MaTinh NVARCHAR(255) NOT NULL;

ALTER TABLE [dbo].[TINH]
ALTER COLUMN MaVung NVARCHAR(255) NOT NULL;


-- Add PK Matinh
ALTER TABLE [dbo].[TINH]
ADD PRIMARY KEY ([Matinh]);

-- Add FK Mavung
ALTER TABLE [dbo].[TINH]
ADD CONSTRAINT FK_TINH_VUNG
FOREIGN KEY (Mavung) REFERENCES [dbo].[VUNG] (Mavung);

---///TABLE [dbo].[HUYEN]
-- Change Matinh column
ALTER TABLE [dbo].[HUYEN]
ALTER COLUMN Matinh NVARCHAR(255) NOT NULL;

-- Change Mahuyen column
ALTER TABLE [dbo].[HUYEN]
ALTER COLUMN Mahuyen NVARCHAR(255) NOT NULL;

-- Add PK Mahuyen
ALTER TABLE [dbo].[HUYEN]
ADD PRIMARY KEY (Mahuyen);

-- Add FK Matinh
ALTER TABLE [dbo].[HUYEN]
ADD CONSTRAINT FK_HUYEN_TINH
FOREIGN KEY (Matinh) REFERENCES [dbo].[TINH](Matinh);


---///TABLE [dbo].[XA]
-- Alter columns to NOT NULL
ALTER TABLE [dbo].[XA]
ALTER COLUMN Maxa NVARCHAR(255) NOT NULL;

ALTER TABLE [dbo].[XA]
ALTER COLUMN MaHuyen NVARCHAR(255) NOT NULL;

-- Add PK Maxa
ALTER TABLE [dbo].[XA] 
ADD PRIMARY KEY (Maxa);

-- Add FK Mahuyen
ALTER TABLE [dbo].[XA] 
WITH NOCHECK
ADD CONSTRAINT FK_XA_HUYEN
FOREIGN KEY (MaHuyen) REFERENCES [dbo].[HUYEN](MaHuyen);

---/// TABLE [dbo].[DIABAN]

-- Alter columns to NOT NULL
ALTER TABLE [dbo].[DIABAN]
ALTER COLUMN Maxa NVARCHAR(255) NOT NULL;


ALTER TABLE [dbo].[DIABAN]
ALTER COLUMN MaDiaBan NVARCHAR(255) NOT NULL;

-- Add PK Maxa
ALTER TABLE [dbo].[DIABAN]
ADD PRIMARY KEY (MaDiaBan);

-- Add FK Mahuyen
ALTER TABLE [dbo].[DIABAN]
ADD CONSTRAINT FK_XA_DIABAN
FOREIGN KEY (Maxa) REFERENCES [dbo].[XA](Maxa);

---/// TABLE [dbo].[THONGTINHO]
-- Change MaHo column data type to BIGINT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN MaHo BIGINT NOT NULL;

-- Set MaHo as the primary key
ALTER TABLE [dbo].[THONGTINHO]
ADD PRIMARY KEY (MaHo);

-- Change Maxa column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN Maxa NVARCHAR(255) NOT NULL;

-- Add foreign key constraint to XA table
ALTER TABLE [dbo].[THONGTINHO]
ADD CONSTRAINT FK_THONGTINHO_XA
FOREIGN KEY (Maxa) REFERENCES XA(Maxa);

-- Change [Hoso] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN Hoso INT;

-- Change Nam column data type to SMALLINT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN Nam SMALLINT;

-- Change MaNhanVien column data type to VARCHAR(8)
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN MaNhanVien VARCHAR(8);

-- Change DienThoai column data type to VARCHAR
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN DienThoai VARCHAR(20);

-- Change [TSNK] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN TSNK INT;

-- Change [TSNAM] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN TSNAM INT;

-- Change [TSNU] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN [TSNU] INT;

-- Change [KT9] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN KT9 INT;

-- Change [C45] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN C45 INT;

-- Change [KT14] column data type to INT
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN KT14 INT;

-- Change NGƯỜI TẠO column data type to VARCHAR(8)
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN NguoiTao VARCHAR(8);

-- Change NgayTao column data type to DATETIME
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN NgayTao DATETIME;

-- Change Phienban column data type to VARCHAR
ALTER TABLE [dbo].[THONGTINHO]
ALTER COLUMN Phienban VARCHAR(10);

---/// TABLE [dbo].[THANHVIENTRONGHO]
-- Change MaHo column data type to BIGINT
ALTER TABLE [dbo].[THANHVIENTRONGHO]
ALTER COLUMN MaHo BIGINT NOT NULL;

-- Add foreign key constraint to THONGTINHO table
ALTER TABLE [dbo].[THANHVIENTRONGHO]
WITH NOCHECK
ADD CONSTRAINT FK_THANHVIENTRONGHO_THONGTINHO
FOREIGN KEY ([MaHo]) REFERENCES [dbo].[THONGTINHO]([MaHo]);

-- Change MaThanhVien column data type to INT
ALTER TABLE [dbo].[THANHVIENTRONGHO]
ALTER COLUMN MaThanhVien INT;

-- Change SoThuTu column data type to INT
ALTER TABLE [dbo].[THANHVIENTRONGHO]
ALTER COLUMN SoThuTu INT;

---/// TABLE [dbo].[THONGTINTUVONG]
-- Change MaHo column data type to BIGINT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN MaHo BIGINT;

-- Add foreign key constraint to THONGTINHO table
ALTER TABLE [dbo].[THONGTINTUVONG]
WITH NOCHECK
ADD CONSTRAINT FK_MAHO_THONGTINTUVONG_THONGTINHO
FOREIGN KEY (MaHo) REFERENCES THONGTINHO(MaHo);

-- Change MaTuVong column data type to INT (not null)
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN MaTuVong INT;

-- Change SoThuTu column data type to INT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN SoThuTu INT;

-- Change Gioitinh column data type to BIT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Gioitinh BIT;

-- Update existing data (1 for male, 2 for female)
UPDATE [dbo].[THONGTINTUVONG]
SET [Gioitinh] = CASE WHEN [Gioitinh] = 1 THEN 1 ELSE 0 END;

-- Change Thangtuvong column data type to INT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Thangtuvong INT;

-- Change Namtuvong column data type to SMALLINT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Namtuvong SMALLINT;

-- Change Thangsinh column data type to INT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Thangsinh INT;

-- Change Namsinh column data type to SMALLINT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Namsinh SMALLINT;

-- Change TUỔI column data type to INT
ALTER TABLE [dbo].[THONGTINTUVONG]
ALTER COLUMN Tuoi INT;


