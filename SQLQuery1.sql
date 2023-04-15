create table DG(
	MaDG varchar(10),
	HoTen nvarchar(20),
	NgaySinh date,
	primary key(MaDG)
)
create table Sach(
	MaSach varchar(10),
	TenSach nvarchar(20),
	TenTG nvarchar(20),
	SoLuong int,
	primary key(MaSach)
)
create table MuonSach(
	MaPM varchar(10),
	MaDG varchar(10),
	NgayMuon date,	
	primary key(MaPM),
	foreign key (MaDG) references DG(MaDG)
)
create table CTPM(
	MaPM varchar(10),
	MaSach varchar(10),
	NgayTra date,
	primary key(MaPM,MaSach),
	foreign key (MaSach) references Sach(MaSach),
	foreign key (MaPM) references MuonSach(MaPM)
)
select *from DG

