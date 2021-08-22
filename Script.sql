/*
Created		8/9/2021
Modified		8/10/2021
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/

Create database SachOnline
go
use SachOnline
go

Create table [SanPham]
(
	[MaSP] Nvarchar(50) NOT NULL,
	[TenSP] Nvarchar(50) NULL,
	[Gia] Integer NULL,
	[MoTa] Nvarchar(50) NULL,
	[HinhAnh] Nvarchar(50) NULL,
	[MaDanhMuc] Nvarchar(50) NOT NULL,
	[MaNXB] Nvarchar(50) NOT NULL,
Constraint [pk_SanPham] Primary Key ([MaSP])
) 
go

Create table [DanhMucSanPham]
(
	[MaDanhMuc] Nvarchar(50) NOT NULL,
	[TenDanhMuc] Nvarchar(50) NULL,
Constraint [pk_DanhMucSanPham] Primary Key ([MaDanhMuc])
) 
go

Create table [NhaXuatBan]
(
	[MaNXB] Nvarchar(50) NOT NULL,
	[TenNhaXuatBan] Nvarchar(50) NULL,
Constraint [pk_NhaXuatBan] Primary Key ([MaNXB])
) 
go

Create table [KhachHang]
(
	[SDT] Nvarchar(10) NOT NULL,
	[TenKH] Nvarchar(50) NULL,
	[Email] Nvarchar(50) NULL,
	[MatKhau] Nvarchar(50) NULL,
	[DiaChi] Nvarchar(50) NULL,
Constraint [pk_KhachHang] Primary Key ([SDT])
) 
go

Create table [AccountAdmin]
(
	[MaTK] Nvarchar(50) NOT NULL,
	[MatKhau] Nvarchar(50) NULL,
	[Ten] Nvarchar(50) NULL,
	[SDT] Nvarchar(10) NULL,
	[Quyen] Nvarchar(50) NULL,
Constraint [pk_AccountAdmin] Primary Key ([MaTK])
) 
go

Create table [GioHang]
(
	[SDT] Nvarchar(10) NOT NULL,
	[MaSP] Nvarchar(50) NOT NULL,
	[SoLuong] Integer NULL,
Constraint [pk_GioHang] Primary Key ([SDT],[MaSP])
) 
go

Create table [BLOG]
(
	[MaBlog] Nvarchar(50) NOT NULL,
	[TenBlog] NText NULL,
	[NoiDungBlog] NText NULL,
Constraint [pk_BLOG] Primary Key ([MaBlog])
) 
go


Alter table [GioHang] add  foreign key([MaSP]) references [SanPham] ([MaSP])  on update no action on delete no action 
go
Alter table [SanPham] add  foreign key([MaDanhMuc]) references [DanhMucSanPham] ([MaDanhMuc])  on update no action on delete no action 
go
Alter table [SanPham] add  foreign key([MaNXB]) references [NhaXuatBan] ([MaNXB])  on update no action on delete no action 
go
Alter table [GioHang] add  foreign key([SDT]) references [KhachHang] ([SDT])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go



insert into DanhMucSanPham values('DM01',N'Sach Thiếu Nhi')
insert into DanhMucSanPham values('DM02',N'Sách Giáo Khoa')

go 
insert into NhaXuatBan values('NXB01',N'Kim Đồng')
insert into NhaXuatBan values('NXB02',N'Giáo dục')

go

insert into SanPham values('SP01',N'ABC',1000,N'Chưa có mô tả',N'h1.png',N'DM01',N'NXB01')
insert into SanPham values('SP02',N'XYZ',1000,N'Chưa có mô tả',N'h2.png',N'DM01',N'NXB01')
insert into SanPham values('SP03',N'Sách Lịch Sử',2111,N'Chưa có mô tả',N'h3.png',N'DM01',N'NXB01')
insert into SanPham values('SP04',N'Ngữ Văn',3333,N'Chưa có mô tả',N'h4.png',N'DM01',N'NXB01')
insert into SanPham values('SP05',N'Lịch Sử',1000,N'Chưa có mô tả',N'h5.png',N'DM01',N'NXB01')
insert into SanPham values('SP06',N'GGG',1000,N'Chưa có mô tả',N'h6.png',N'DM01',N'NXB01')
insert into SanPham values('SP07',N'Sách Lịch Sử',4444,N'Chưa có mô tả',N'h7.png',N'DM01',N'NXB01')
insert into SanPham values('SP08',N'Sách Lịch Sử',5555,N'Chưa có mô tả',N'h8.png',N'DM01',N'NXB01')
insert into SanPham values('SP09',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h9.png',N'DM01',N'NXB01')
insert into SanPham values('SP010',N'Sách Lịch Sử',6666,N'Chưa có mô tả',N'h10.png',N'DM01',N'NXB01')
insert into SanPham values('SP011',N'Sách Lịch Sử',7777,N'Chưa có mô tả',N'h11.png',N'DM01',N'NXB01')
insert into SanPham values('SP012',N'Sách Lịch Sử',8888,N'Chưa có mô tả',N'h12.png',N'DM01',N'NXB01')

GO

insert into KhachHang values('0123456789',N'Văn Cường','Cuong@gmail.com','1',N'Chí Tân')
go
insert into GioHang values('0123456789','SP01',1)
go
insert into BLOG values('BLOG01',N'Tại sao phải đọc sách?',N'Một loạt các nghiên cứu khoa học đã chứng minh rằng đọc sách mang lại rất nhiều lợi ích cho sức khỏe tinh thần của bạn, đồng thời giúp bạn cải thiện bản thân một cách toàn diện.')
insert into BLOG values('BLOG02',N'Nên đọc sách vào thời gian nào?',N'Nhiều chuyên gia khẳng định rằng đọc sách vào buổi sáng là thời điểm tốt nhất để đọc. Chúng ta tỉnh táo và tập trung nhất vào buổi sáng, điều này giúp chúng ta lưu giữ thông tin mới tốt hơn. Nếu bạn khó ngủ vào ban đêm, đọc sách có thể giúp ích cho bạn.')
insert into BLOG values('BLOG03',N'Tại sao phải đọc sách?',N'Một loạt các nghiên cứu khoa học đã chứng minh rằng đọc sách mang lại rất nhiều lợi ích cho sức khỏe tinh thần của bạn, đồng thời giúp bạn cải thiện bản thân một cách toàn diện.')
insert into BLOG values('BLOG04',N'Nên đọc sách vào thời gian nào?',N'Nhiều chuyên gia khẳng định rằng đọc sách vào buổi sáng là thời điểm tốt nhất để đọc. Chúng ta tỉnh táo và tập trung nhất vào buổi sáng, điều này giúp chúng ta lưu giữ thông tin mới tốt hơn. Nếu bạn khó ngủ vào ban đêm, đọc sách có thể giúp ích cho bạn.')
go
insert into AccountAdmin values('TK001',N'1',N'Nguyễn văn Cường',N'0123456789',N'ADMIN')
insert into AccountAdmin values('TK002',N'1',N'Nguyễn văn Cường',N'0123456789',N'NV')