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

Create table [GioHang]
(
	[MaGioHang] Nvarchar(50) NOT NULL,
	[NgayLap] Datetime NULL,
	[TongTien] Integer NULL,
	[TrangThai] Nvarchar(50) NULL,
	[SDT] Nvarchar(10) NOT NULL,
Constraint [pk_GioHang] Primary Key ([MaGioHang])
) 
go

Create table [ChiTietGioHang]
(
	[MaGioHang] Nvarchar(50) NOT NULL,
	[MaSP] Nvarchar(50) NOT NULL,
	[TenSP] Char(1) NULL,
	[SoLuong] Integer NULL,
	[DonGia] Integer NULL,
	[ThanhTien] Integer NULL,
Constraint [pk_ChiTietGioHang] Primary Key ([MaGioHang],[MaSP])
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
Constraint [pk_AccountAdmin] Primary Key ([MaTK])
) 
go


Alter table [ChiTietGioHang] add  foreign key([MaSP]) references [SanPham] ([MaSP])  on update no action on delete no action 
go
Alter table [SanPham] add  foreign key([MaDanhMuc]) references [DanhMucSanPham] ([MaDanhMuc])  on update no action on delete no action 
go
Alter table [SanPham] add  foreign key([MaNXB]) references [NhaXuatBan] ([MaNXB])  on update no action on delete no action 
go
Alter table [ChiTietGioHang] add  foreign key([MaGioHang]) references [GioHang] ([MaGioHang])  on update no action on delete no action 
go
Alter table [GioHang] add  foreign key([SDT]) references [KhachHang] ([SDT])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


go

insert into DanhMucSanPham values('DM01',N'Sach Thiếu Nhi')
insert into DanhMucSanPham values('DM02',N'Sách Giáo Khoa')

go 
insert into NhaXuatBan values('NXB01',N'Kim Đồng')
insert into NhaXuatBan values('NXB02',N'Giáo dục')

go

insert into SanPham values('SP01',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h1.png',N'DM01',N'NXB01')
insert into SanPham values('SP02',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h2.png',N'DM01',N'NXB01')
insert into SanPham values('SP03',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h3.png',N'DM01',N'NXB01')
insert into SanPham values('SP04',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h4.png',N'DM01',N'NXB01')
insert into SanPham values('SP05',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h5.png',N'DM01',N'NXB01')
insert into SanPham values('SP06',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h6.png',N'DM01',N'NXB01')
insert into SanPham values('SP07',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h7.png',N'DM01',N'NXB01')
insert into SanPham values('SP08',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h8.png',N'DM01',N'NXB01')
insert into SanPham values('SP09',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h9.png',N'DM01',N'NXB01')
insert into SanPham values('SP010',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h10.png',N'DM01',N'NXB01')
insert into SanPham values('SP011',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h11.png',N'DM01',N'NXB01')
insert into SanPham values('SP012',N'Sách Lịch Sử',1000,N'Chưa có mô tả',N'h12.png',N'DM01',N'NXB01')

GO

insert into KhachHang values('0123456789',N'Văn Cường','Cuong@gmail.com','1',N'Chí Tân')
go