CREATE  DATABASE db_akademik;

CREATE  TABLE  tb_dosen 
(nik Bigint Not Null  Primary key,
nama_dosen Varchar(32) Not Null);


CREATE  TABLE  tb_dosen_matakuliah
(nik Bigint Not Null,
no_matkul Bigint Not Null,
foreign key (nik) references tb_dosen (nik));
ALTER TABLE tb_dosen_matakuliah ADD FOREIGN KEY (no_matkul) REFERENCES tb_matakuliah (no_matkul);

CREATE  TABLE  tb_matakuliah
(no_matkul Bigint Not Null Primary key,
nama_matkul Varchar(32) Not Null);


CREATE  TABLE  tb_mahasiswa 
(NIM Bigint Not Null  Primary key,
nama_mahasiswa Varchar(32) Not Null,
jenjang Varchar(16) Not Null);

CREATE  TABLE tb_matakuliah_mahasiswa
(NIM Bigint Not Null ,
no_matkul Bigint Not Null,
foreign key (no_matkul) references tb_matakuliah (no_matkul));

ALTER TABLE tb_matakuliah_mahasiswa ADD FOREIGN KEY (NIM) REFERENCES tb_mahasiswa (NIM);


CREATE  TABLE tb_nilai
(NIM Bigint Not Null,
no_matkul Bigint Not Null,
semester  Varchar(16) Not Null,
prodi Varchar(16) Not Null,
kelas Varchar(2) Not Null,
tahun_awal YEAR(2),
tahun_akhir YEAR(2),
UTS enum ('A','B', 'C', 'D', 'E'),
UAS enum ('A','B', 'C', 'D', 'E'),
tugas enum ('A','B', 'C', 'D', 'E'),
kehadiran enum ('A','B', 'C', 'D', 'E'),
quis enum ('A','B', 'C', 'D', 'E'),
pratik enum ('A','B', 'C', 'D', 'E'),
NA enum ('A','B', 'C', 'D', 'E'),
UP enum ('A','B', 'C', 'D', 'E'),
NHU enum ('A','B', 'C', 'D', 'E'),
NH enum ('A','B', 'C', 'D', 'E'),
Keterangan Varchar(16) Null,
foreign key (no_matkul) references tb_matakuliah (no_matkul));

ALTER TABLE tb_nilai ADD FOREIGN KEY (NIM) REFERENCES tb_mahasiswa (NIM);

create table tb_nilai_1
(NA enum ('A','B', 'C', 'D', 'E'),
UP enum ('A','B', 'C', 'D', 'E'),
NHU enum ('A','B', 'C', 'D', 'E'),
NH enum ('A','B', 'C', 'D', 'E'));





insert into tb_dosen (nik, nama_dosen)
values ("2008.36.005", "Dianni Yusuf,S.Kom.,M.Kom" ),
       ("2016.36.185", "Alif Akbar Fitriawan,S.Pd.,M.Kom" ),
       ("2010.36.057", "Endi Sailul Haq,S.T.M.T" ),
       ("2011.36.073", "Herman Yuliandoko,S.T.M.T" ),
       ("2013.36.106", "Farisqi Panduardi,S.ST.,M.T");


insert into tb_matakuliah (no_matkul , nama_matkul)
values ("1", "Basis Data" ),
       ("2", "IMK" ),
       ("3", "Dasar Pemograman" ),
       ("4", "Pemograman Hadware" ),
       ("5", "MTK Diskrit" );

insert into tb_dosen_matakuliah (NIM, no_matkul)
values ("2008.36.005", "1"),
       ("2016.36.185", "2"),
       ("2010.36.057", "3"),
       ("2010.36.057", "4"),
       ("2013.36.106", "5");
insert into tb_matakuliah_mahasiswa (nim, no_matkul)
values ("362055401062", "3"),
       ("362055401084", "2"),
       ("362055401089", "1"),
       ("362055401090", "1"),
       ("362055401091", "5");

insert into tb_mahasiswa (NIM, nama_mahasiswa, jenjang)
values ("362055401062", "Wandha Dese F", "D3"),
       ("362055401084", "Rini Maulida", "D3"),
       ("362055401089", "Fernica E", "D3"),
       ("362055401090", "Kharisma T", "D3"),
       ("362055401091", "Ilma R", "D3");

insert into tb_nilai (NIM, no_matkul, semester, prodi, kelas,tahun_awal,
tahun_akhir, UTS, UAS, tugas, kehadiran, quis, pratik, NA, UP, NHU, NH, Keterangan)
values ("362055401062", "Wandha Dese F", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "C", "B","B","B", "lulus"),
       ("362055401084", "Rini Maulida", "D3","1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "A", "A","C","B", "lulus"),
       ("362055401089", "Fernica E", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "C", "B","B","B", "lulus"),
       ("362055401090", "Kharisma T", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "C", "B","B","B", "lulus"),
       ("362055401091", "Ilma R", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "C", "B","B","B", "lulus");
       

select  * from tb_dosen;


select  * from tb_dosen  join tb_dosen_matakuliah on (tb_dosen.nik  = tb_dosen_matakuliah.nik) join tb_matakuliah on (tb_matakuliah.no_matkul  = tb_dosen_matakuliah.no_matkul);
select  * from tb_matakuliah  join tb_matakuliah_mahasiswa on (tb_matakuliah.no_matkul  = tb_matakuliah_mahasiswa.no_matkul ) join tb_mahasiswa on (tb_mahasiswa.nim   = tb_matakuliah_mahasiswa.nim);
	



							  ===== belum normalisasi =======     
create table tb_mahasiswa 
(NIM Bigint Not Null  Primary key,
nama_mahasiswa Varchar(32) Not Null,
jenjang Varchar(16) Not Null,
semester  Varchar(16) Not Null,
prodi Varchar(16) Not Null,
kelas Varchar(2) Not Null,
tahun_awal YEAR(2),
tahun_akhir YEAR(2),
UTS enum ('A','B', 'C', 'D', 'E') Not Null,
UAS enum ('A','B', 'C', 'D', 'E') Not Null,
tugas enum ('A','B', 'C', 'D', 'E') Not Null,
kehadiran enum ('A','B', 'C', 'D', 'E') Not Null,
quis enum ('A','B', 'C', 'D', 'E') Not Null,
pratik enum ('A','B', 'C', 'D', 'E') Not Null,
NA enum ('A','B', 'C', 'D', 'E') Null,
UP enum ('A','B', 'C', 'D', 'E') Null,
NHU enum ('A','B', 'C', 'D', 'E')Null,
NH enum ('A','B', 'C', 'D', 'E') Null,
Keterangan Varchar(16) Null);


insert into tb_mahasiswa (NIM, nama_mahasiswa, jenjang, semester, prodi, kelas,tahun_awal,
tahun_akhir, UTS, UAS, tugas, kehadiran, quis, pratik, NA, UP, NHU, NH, Keterangan )
values ("362055401062", "Wandha Dese F", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "", "B","B","B", "lulus"),
       ("362055401084", "Rini Maulida", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "A", "A","A","A", " "),
       ("362055401089", "Fernica E", "D3","1", "TI", "1C", "2020","2021", "A", "A", "B", "A", "A", "A", "", "B","B","B", ""),
       ("362055401090", "Kharisma T", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "D", "B","B","B", "lulus"),
       ("362055401091", "Ilma R", "D3", "1", "TI", "1C", "2020","2021", "A", "A", "A", "A", "A", "A", "", "B","B","B", "lulus");