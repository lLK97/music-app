create table users(
 id int not null,
 name nvarchar(100),
 email nvarchar(255),
 pass nvarchar(100),
 is_admin boolean,
 prefences nvarchar(255),
 remember_token varchar(100),
 createAt datetime,
 updateAt datetime,
 primary key (id)
);


create table artists(
id int not null AUTO_INCREMENT,
name_artist nvarchar(100),
image varchar(100),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);

create table albums(
id int not null AUTO_INCREMENT,
artist_id int not null,
name_albums nvarchar(100),
cover nvarchar(100),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);

create table playlist_song(
id int not null AUTO_INCREMENT,
playlistId int not null,
songId nvarchar(100),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);

create table songs(
id int not null AUTO_INCREMENT,
albumId int not null, 
artistId int not null,
title nvarchar(100),
lyrics text,
url_song text,
second_time int,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);


create table users(
id int not null AUTO_INCREMENT,
 name nvarchar(100),
 email nvarchar(255),
 pass nvarchar(100),
 is_admin boolean,
 prefences nvarchar(255),
 remember_token varchar(100),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);




create table interations(
id int not null AUTO_INCREMENT,
userId int not null,
songId int not null,
liked boolean,
play_count int,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);


create table commoninteractives(
id int not null AUTO_INCREMENT,
songId int,
numberOfListen int,
numberOfLiked int,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table playlist(
id int not null AUTO_INCREMENT,
userId int not null,
name nvarchar(100),
rule text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 primary key (id)
);



-- INSERT SONG
SET GLOBAL sql_mode='';
insert into artists (name_artist, image) values 
('Đen', 'https://i.scdn.co/image/ab6761610000e5eb737b3f8838b053cff8c2c75e'),
('Mỹ Tâm','https://i.scdn.co/image/ab6761610000e5ebe033eca862ece1cb7a3bed44'),
('Adele','https://i.scdn.co/image/ab6761610000e5eb68f6e5892075d7f22615bd17'),
('Vũ','https://i.scdn.co/image/ab6761610000e5eb9896fc9a2e28384f2d705c45'),
('M4U Thùy Chi','https://i.scdn.co/image/ab6761610000e5eb9896fc9a2e28384f2d705c45'),
('Thùy Chi','https://i.scdn.co/image/ab6761610000e5eb0e7785316847995f2313089b'),
('Rihanna','https://i.scdn.co/image/ab6761610000e5eb99e4fca7c0b7cb166d915789'),
('Eminem','https://i.scdn.co/image/ab6761610000e5eba00b11c129b27a88fc72f36b'),
('Justin Bieber','https://i.scdn.co/image/ab6761610000e5eb8ae7f2aaa9817a704a87ea36'),
('Ed Sheeran','https://i.scdn.co/image/ab6761610000e5eb12a2ef08d00dd7451a6dbed6');

select * from artists;
insert into albums (artist_id, name_albums, cover) values 
(1, 'Show của Đen', 'Đen'),
(1, 'dongvui harmony', 'Đen'),
(2, 'Chị trợ của anh', 'Mỹ Tâm' ),
(2, 'Tâm 9', 'Mỹ Tâm' ),
(3, '30', 'Adele' ),
(3, '25', 'Adele' ),
(4, 'Một vạn năm', 'Vũ' ),
(4, 'Vũ trụ song song', 'Vũ' ),
(5, 'The best of Thùy Chi 1', 'M4U Thùy Chi' ),
(5, 'The best of Thùy Chi 2', 'M4U Thùy Chi' ),
(7, 'Wakanda Forever', 'Rihanna' ),
(7, 'ANTI', 'Rihanna' ),
(8, 'Music to be Murdered By', 'Eminem' ),
(8, 'Kamikaze', 'Eminem' ),
(9, 'Justice', 'Justin Bieber' ),
(9, 'Changes', 'Justin Bieber' ),
(10, 'Loose Change', 'Ed Sheeran' ),
(10, 'Live at the Bedford', 'Ed Sheeran' );






insert into songs (albumId, artistId, title, lyrics, url_song, second_time) values 
(1,1, 'Đi Về nhà', '[JustaTee:]<br>Đường về nhà là vào tim ta<br>Dẫu nắng mưa gần xa<br>Thất bát, vang danh<br>Nhà vẫn luôn chờ ta (Ah)<br><br>Đường về nhà là vào tim ta (Yeah, JustaTee)<br>Dẫu có muôn trùng qua (và Đen Vâu)<br>Vật đổi, sao dời (Yeah)<br>Nhà vẫn luôn là nhà (Đi về nhà, yah)<br><br>[Đen:]<br>Lao vào đời mà kiếm cơm, lao vào đời tìm cơ hội<br>Những thành thị thường lấp lánh, còn đêm thành thị thường trơ trọi<br>Như mọi đứa trẻ khác, lớn lên muốn đi xa hoài<br>Nhà thì vẫn ở yên đó, đợi những đứa con đang ra ngoài<br><br>Bước ra ngoài mới biết, không ở đâu bằng ở nhà<br>Biết có gì để mất, trước khi sẵn sàng mở quà<br>Không phải là võ sĩ nhưng mà phải giỏi đấu đá<br>Nhiều khi kiệt sức chỉ vì gắng giữ mình không xấu xa<br><br>Đôi lúc bỗng thấy đồng cảm với Mai An Tiêm<br>Bước chân ra là sóng gió, chỉ có nhà mãi an yên<br>Ngoài kia phức tạp, như rễ má và dây mơ<br>Về nhà để có lúc cho phép mình được ngây thơ<br><br>[JustaTee:]<br>Mang theo bao nao nức lên chiếc xe này<br>Chở một niềm háo hức xuân suốt những đêm ngày<br>Cùng dòng người trên phố mang sắc mai hương đào<br>Tìm về nơi ấm êm<br><br>Đường về nhà là vào tim ta<br>Dẫu nắng mưa gần xa<br>Thất bát, vang danh<br>Nhà vẫn luôn chờ ta<br><br>Đường về nhà là vào tim ta<br>Dẫu có muôn trùng qua (Dẫu muôn trùng qua)<br>Vật đổi, sao dời (Ah, vật đổi, sao dời)<br>Nhà vẫn luôn là nhà (Yah, yah, yah)<br><br>[Đen:]<br>Về ngôi nhà, có góc vườn nhiều chó nhiều gà<br>Đám bạn nói con khó chiều và lại thích gió trời hơn gió điều hoà<br>Về ăn cơm mẹ nấu, về mặc áo mẹ may<br>Về đưa ba ra chợ, mua cây đào cây mai về bày<br>Cả năm trời làm việc nhiều khi rã rời như cái máy<br>Về nhà thấy áp lực nhẹ như bấc thổi cái là bay<br>Ấm êm hơn bếp lửa, ngọt bùi hơn lúa non<br>Nhà vẫn luôn ở đó, mong chờ những đứa con<br>Dẫu cho mưa cho nắng, không bao giờ nề hà<br>Hạnh phúc chỉ đơn giản, là còn được về nhà<br>Hạnh phúc, đi về nhà<br>Cô đơn, đi về nhà<br>Thành công, đi về nhà<br>Thất bại, đi về nhà<br>Mệt quá, đi về nhà<br>Mông lung, đi về nhà<br>Chênh vênh, đi về nhà<br>Không có việc gì, vậy thì đi về nhà<br>Không có việc gì, vậy thì đi về nhà<br>Đi về nhà, đi về nhà<br><br>[JustaTee:]<br>Đường về nhà là vào tim ta<br>Dẫu nắng mưa gần xa<br>Thất bát, vang danh<br>Nhà vẫn luôn chờ ta<br><br>Đường về nhà là vào tim ta<br>Dẫu có muôn trùng qua<br>Vật đổi, sao dời (Ah)<br>Nhà vẫn luôn là nhà (Yah, yah, yah)<br><br>[Đen:]<br>Nhà có thể lớn có thể có thể không khang trang<br>Cha mẹ nào cũng muốn con được sống đàng hoàng<br>Lớn lên làm người mong một tương lại sáng lạn<br>Cặm cùi cả đời không bao giờ thấy than van<br><br>[JustaTee:]<br>Đường về nhà là vào tim ta<br>Dẫu nắng mưa gần xa<br>Thất bát, vang danh<br>Nhà vẫn luôn chờ ta<br><br>Đường về nhà là vào tim ta<br>Dẫu có muôn trùng qua<br>Vật đổi, sao dời<br>Nhà vẫn luôn là nhà', 'https://data.chiasenhac.com/down2/2179/1/2178291-6e126457/128/Di%20Ve%20Nha%20-%20Den_%20JustaTee.mp3',200),
(1,1, 'Mười năm (show)', 'Ayy<br> Den Vau<br>One more time Lon Xon<br>Dìa dia<br>Có người đến, có người đi và có người ở lại<br>Có lúc khôn và cũng có lần nhỡ dại<br>Có lúc tủi, có lúc vinh và có lúc thăng hoa<br>Có ngày cười, có ngày khóc và có ngày hoan ca<br>Đời cho ta quá nhiều thứ<br>Ta chưa cho đời được nhiều<br>Đến bây giờ vẫn chưa học được cách làm sao để lời được nhiều<br>Mười năm như một bức hoạ, cũng may là trời đỡ xám hơn<br>Thứ mà ta học được nhiều nhất là cách xin lỗi và lời cám ơn<br>Mặt trời là cái bếp lớn<br>Còn tia nắng là than hồng<br>Mỗi ngày mà ta thức dậy<br>Ta chỉ mong được an lòng<br>Hoàng hôn là dải lụa<br>Còn màn đêm là tấm chăn<br>Mỗi đêm ta ngồi ta viết, ta chỉ mong không bị cấm ngăn<br>Nhởn nhơ trên con đường vắng, tự nhủ mình không cần tăng ga<br>Lắng nghe cuộc đời như lá, lá rơi nghiêng như Trần Đăng Khoa<br>Lời ca là chất kích thích, cho cuộc đời thêm phần thăng hoa<br>Âm nhạc là cô gái đẹp, ta và nhạc bao lần trăng hoa<br>Cuộc đời này có được mấy lần mười năm?<br>Sống làm sao khi khó, còn được có những người thăm<br>Nhắm mắt và hồi tưởng, chẳng có đâu mà dài<br>Giống như LK ta vẫn tự hỏi nhiều khi Đen Vâu là ai<br>Có cánh hoa nào không tàn<br>Có giấc mơ nào không tan<br>Hát để tâm tư vén màn<br>Thả mình xuôi với mây ngàn<br>Lòng mình vẫn chưa ngăn nắp<br>Nhìn lại buồn vui tháng năm<br>Một đời này ta sẽ có mấy lần mười năm?<br>Tâm hồn của anh, anh không chắc nó hợp thời đại<br>Anh níu những cành cây khô và mong ngày sau lá rợp trời lại<br>Mọi thứ ngày càng phát triển, sao chúng ta càng bị bất an?<br>Anh sống giữa lòng thành phố, nhưng lại mơ về thị trấn hoang<br>Hoài niệm là thứ đồ chơi, ta càng lớn lại càng không chán<br>Gom từng chút, từng chút, từng chút như con dã tràng không cần công cáng<br>Nó là thứ tài sản vô giá, không ai mua và cũng không bán<br>Thấy lẻ loi như con chuồn chuồn, bay chơ vơ trên mặt sông thoáng<br>Con người cũng như con chim, sáng kiếm ăn chiều bay vào tổ<br>Con nào cũng như con nào, chẳng con sướng chẳng con nào khổ<br>Con người cũng như con chim, chiều về tổ sáng thì kiếm ăn<br>Ngày mải mê đi tìm cơm gạo, đêm co mình dưới một miếng chăn<br>Cuộc đời là nồi cá kho, muốn nó ngon phải kho nhiều lửa<br>Có quá nhiều thứ mưu cầu, ta chỉ cần được no nhiều bữa<br>Ta nhận của đời quá nhiều và ta cần phải cho nhiều nữa<br>Và chỉ mong trong những đêm đông, mẹ không còn phải ho nhiều nữa<br>Có cánh hoa nào không tàn<br>Có giấc mơ nào không tan<br>Hát để tâm tư vén màn<br>Thả mình xuôi với mây ngàn<br>Lòng mình vẫn chưa ngăn nắp<br>Nhìn lại buồn vui tháng năm<br>Một đời này ta sẽ có mấy lần mười năm<br>Tao đã từng đứng dưới cùng và đã từng việt vị<br>Tao đã nhận những lời khen và cả lời miệt thị<br>Và tao tin nó vẫn còn đó vẫn chưa hề triệt tiêu<br>Mười năm qua tao vẫn cố gắng làm nhạc người Việt chill<br>Mấy thằng ghét tao, tụi nó cũng đã bỏ cuộc<br>Tao vẫn là con đóm đóm, tụi nó cháy như bó đuốc<br>Tao lập loè cả cuộc đời, tụi nó đã tắt từ lâu<br>Thời gian là thứ diệt cỏ ghê hơn cả thuốc trừ sâu<br>Mười năm tao vẫn là tao vẫn không khác mấy<br>Từ nhạc ra ngoài đời thường vẫn thân xác ấy<br>Có người nói tao thay đổi<br>Không! là tao thích nghi<br>Bật cười trước những phán xét, người đời thích nghi<br>Tao sẽ vẫn rap tiếp cho bản thân tao trước<br>Khi mà tao còn thở, khi mà chân tao bước<br>Khi tao còn lo lắng cho những người ghét tao<br>Dõi theo thằng không bỏ cuộc, mệt mỏi biết bao<br>Bước vào cuộc chơi tao không có gì để mà mất cả<br>Cách mà tao kiếm tiền là niềm vui vượt lên trên tất cả<br>Con đường do tao chọn và tao cam tâm bước<br>Tao thà chìm dưới đại dương còn hơn bị tan trong nước<br>Đêm nay tao thức trắng nhìn bầu trời sao<br>Muốn được cười, muốn được khóc như ngày đầu đời tao<br>Có cánh hoa nào không tàn<br>Có giấc mơ nào không tan<br>Hát để tâm tư vén màn<br>Thả mình xuôi với mây ngàn<br>Lòng mình vẫn chưa ngăn nắp<br>Nhìn lại buồn vui tháng năm<br>Một đời này ta sẽ có mấy lần mười năm', 'https://data33.chiasenhac.com/downloads/1992/1/1991671-dce8d983/128/Muoi%20Nam%20Lon%20Xon%203_%20-%20Den_%20Ngoc%20Linh.mp3', 257),
(1,1,'Nhiều năm nữa (show)','Rap 1 chút cho đỡ thèm , một cái beat thật là cũ mèm<br>Và một cái mic cùi, đã lâu chưa có ai chùi<br>Ai lau, và cũng không định thaу trong mai sau<br>Tao đang nghĩ về những thằng bạn, những ngàу lang thang<br>Ѕẽ ra sao nếu như ngàу mai cuộc đời sang trang<br>Ϲhân bước đường thênh thang haу gập ghềnh trên lối nhỏ<br>Maу mắn kia tới thăm, sáng lạn haу tối tăm haу bị hạnh phúc chối bỏ<br>Giống như khí cầu- muốn baу cao phải ném đi những bao cát<br>Ϲon người ta không thể cứ sống mà có quá nhiều khao khát<br>Rồi sẽ phải lựa chọn, rồi sẽ phải cân đo đong đếm<br>Rồi sẽ phải đóng chặt cửa tâm hồn để cho đêm âu lo không đến<br>Rồi nhìn quãng đường đã qua không biết thành công haу là thất bại<br>Ɲỗi buồn lớn nhất là khi niềm vui cũng vì lo toan mà bị gác lại,<br>Rồi chìm phai<br>Ѕợ mai muốn tìm lại mình mà không biết phải tìm ai<br>Rồi lục lọi trong trí nhớ, đôi ý thơ còn trơ trốc<br>Thời gian là dòng nước nhưng lại làm lòng mình khô khốc<br>ta khóc cho mảnh linh hồn ta đã sứt mẻ<br>Ѕẽ chẳng có lệ nào rơi khi đam mê kia đã nứt nẻ<br>Ɲghe mưa đêm rơi rất khẽ<br>màу có nghe thấу nhịp beat không ?<br>nó đẹp như một nàng tiên<br>nó saу mê như thuốc phiện<br>càng nghe tao lại càng ghiền<br>nghe hoài làm tao phát điên<br>homie à, sẽ có người bỏ cuộc chơi<br>tao biết, vì gánh nặng của cuộc đời<br>anh em mình vất vả, lắm lúc cũng hụt hơi<br>cũng là chuуện bình thường ở huуện<br>sau nàу ngồi với nhau,” ngàу xửa ngàу xưa” mở truуện<br>ờ hồi đó flow tao thế nàу, lời màу thế kia<br>hồi đó quaу MV chỉ có bàn ghế và chai bia<br>hồi đó tao toàn than thở, hồi đó nhạc màу haу ghê<br>hồi đó mình còn trẻ lắm, hồi đó mình còn saу mê<br>có khi nào trên phố, màу bất chợt dừngxe<br>lắng nghe những câu ca quen thuộc mà màу đã từng nghe<br>đã từng saу đắm, đã từng cho là haу lắm, nhưng đã quên<br>không nhớ được người hát và cả tên<br>homie à, chúng ta mài sắt thành kim<br>nếu bắt tao phải từ bỏ đau như là cắt vành tim<br>sau nàу trong đầu mình chỉ toàn lãi lời lọc lõi<br>xuân hạ thu đông chung quу chỉ mãi mùa mệt mỏi<br>âu lo như là Tô Lịch ta ngửi lâu thành trơ<br>nhiều năm sau tao chỉ muốn còn được ngồi chửi nhau bằng thơ<br>cho đỡ nhạt nhòa những tháng năm màu xám<br>sống mà không có đam mê như lợn chờ máng đầу cám<br>chưa bao giờ từng nghĩ ta là 1 rapper đúng nghĩa<br>nghe nhạc ta đa số anh em và cũng chưa từng bán đĩa<br>nhiều năm nữa ta vẫn thế nàу haу là một ngôi sao sáng chói<br>ta có vợ đẹp con xinh haу trơ thân trong căn phòng ám khói<br>đến đâу thôi, phòng tao khói trắng phủ...<br>nhiều năm sau màу vẫn còn nghe vài lời tao nhắn nhủ ???','https://data.chiasenhac.com/down2/2199/1/2198419-368c7ddf/128/Nhieu%20Nam%20Nua%20Live_%20-%20Den.mp3', 199),
(2,1,'Đố em biết anh đang nghĩ gì','Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br><br>Ngoài cửa sổ là cơn mưa đang đổ chéo<br>Và anh biết khói thuốc chẳng có gì là bổ béo<br>Khi mà người đàn ông của em trở nên lầm lì<br>Cũng là lúc anh ta đang cố nghe con tim mình thầm thì<br>Đôi khi anh chạnh lòng vì những gã theo đuổi em<br>Có người muốn hái, vài người khác muốn ngửi em<br><br>Anh muốn dắt em đi, họ đưa em bay ngút ngàn<br>Anh viết nhạc bằng bút bi, họ viết bằng cây bút vàng<br>Nhiều người thích anh bởi vì anh chất phác<br>Có lẽ vì thế mùa yêu này anh thất bát<br>Em muốn hái quả mọc lên từ áng mây<br>Anh thì chỉ có cây đâm lên từ đất cát<br>Hôm nay anh thấy mệt như một tuần mà chưa được ngủ nghê<br>Radio phát bài nhạc thật là cũ ghê<br>Có những nỗi buồn anh viết không cần chủ đề<br>Và có niềm đau ngọt như là xăm mà không cần ủ tê<br><br>Anh đâu có muốn hai ta phải nghĩ nhiều<br>Trong cơn gió cuốn đêm nay buông thật mỹ miều<br>Lòng em như chiếc lá sau mưa giông đã nát tươm<br>Dù anh không cố ý buông ra lời sát thương<br><br>Anh đâu có muốn hai ta phải nghĩ nhiều<br>Trong cơn gió cuốn đêm nay buông thật mỹ miều<br>Lòng em như chiếc lá sau mưa giông đã nát tươm<br>Dù anh không cố ý buông ra lời sát thương<br><br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Anh cũng không biết anh đang nghĩ gì)<br><br>Đôi khi anh trồng cây mà không cần có quả<br>Nợ tình cảm là thứ nợ khó trả<br>Tình yêu anh nhiều tới mức chất thành đống trong xó nhà<br>Và chẳng ai muốn phải buồn trong ngày trời lộng gió cả<br>Em đưa cho anh nhiều chìa, nhưng không đưa anh ổ khoá<br><br>Yêu em cả một dòng sông, em lại đựng bằng rổ rá<br>Anh nói không thích đồ ngọt, không có nghĩa là anh thích khổ qua<br>Em thích mặc thật đẹp, sao mảnh tình của mình đầy chỗ vá?<br>Lời em nói như vành khuyên, sao thả vào lòng anh gõ kiến<br>Nó đang cố tìm thức ăn, anh nghe niềm đau rõ tiếng<br>Anh cần nhiều thuốc giảm đau, liều thuốc như thời Lý Hải<br>Nhưng em lại không kê đơn, đêm nay anh chỉ thở dài<br><br>Không cố ý buông lời sát thương<br>Cơn đau này ngát hương<br>Những suy nghĩ khác thường<br>Đành để em lại cho người khác thương<br><br>Không cố ý buông lời sát thương<br>Cơn đau này ngát hương<br>Những suy nghĩ khác thường<br>Đành để em lại cho người khác thương<br><br>Anh đâu có muốn hai ta phải nghĩ nhiều<br>Trong cơn gió cuốn đêm nay buông thật mỹ miều<br>Lòng em như chiếc lá sau mưa giông đã nát tươm<br>Dù anh không cố ý buông ra lời sát thương<br><br>Anh đâu có muốn hai ta phải nghĩ nhiều<br>Trong cơn gió cuốn đêm nay buông thật mỹ miều<br>Lòng em như chiếc lá sau mưa giông đã nát tươm<br>Dù anh không cố ý buông ra lời sát thương<br><br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Đố em biết)<br>Đố em biết anh đang nghĩ gì (Anh cũng không biết anh đang nghĩ gì)<br><br>Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br>Đố em biết anh đang nghĩ gì<br><br>Dù anh không cố ý buông ra lời sát thương<br>Thì anh cũng đã khiến con tim em nát tươm<br><br>Dù anh không cố ý buông ra lời sát thương<br>Thì anh cũng đã khiến con tim em nát tươm','https://data35.chiasenhac.com/downloads/1953/1/1952615-1cdb197d/128/Do%20Em%20Biet%20Anh%20Dang%20Nghi%20Gi%20-%20JustaTee_.mp3', 275),
(2,1,'Hiai Triệu Năm','Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm (yah)<br>Xung quanh anh toàn là nước, ay<br>Cơ thể anh đang bị ướt, ay<br>Mênh mông toàn là nước, ay<br>Êm ái như chưa từng trước đây<br>Trăm ngàn con sóng xô (sóng xô, yah)<br>Anh lao vào trong biển cả vì em làm anh nóng khô (nóng khô, yah)<br>Anh ngâm mình trong làn nước để mặn mòi từ da dẻ (mặn mòi từ da dẻ)<br>Ta cần tình yêu vì tình yêu làm cho ta trẻ (Đúng rồi, yah)<br>Anh cũng cần em nhưng không biết em sao?<br>Anh không care lắm và anh quyết đem trao (hah)<br>Cho em hết nắng cho em hết đêm sao (yeah)<br>Nhìn mặt anh đi, em nghĩ anh tiếc em sao?<br>(Anh không có tiếc em đâu, yo)<br>Trăm ngàn con sóng từ mọi nơi mà đổ về<br>Và đây là cách mà anh đi tìm kiếm sự vỗ về<br>Em có quá nhiều bí mật, anh thì không cần gặng hỏi<br>Em sâu như là đại dương, anh thì không hề lặn giỏi<br>(Anh thì không hề lặn giỏi, baby, yo)<br>Anh soi mình vào gương cho bõ công lau<br>Thấy mặt thấy người sao thấy rõ trong nhau<br>Ánh mắt nụ cười kia không rõ nông sâu<br>Ta rồi sẽ là ai, một câu hỏi nhỏ trong đầu<br>Ta chỉ là hòn đất hay chỉ là cỏ bông lau<br>(Như là mấy gã em mới bỏ không lâu<br>Hay chỉ là đầu thuốc kia cháy đỏ không lâu?)<br>Yêu em kiểu nông dân, yêu em kiểu quê mùa<br>Yêu từ vụ đông xuân, đến hè thu thay mùa<br>Nhưng em thì trơn trượt như là con cá chuối<br>Muốn níu em trong tay, Khá Bảnh cũng khá đuối (Khá Bảnh cũng khá đuối)<br>Em giống hệt như biển cả, em có nhiều bí mật<br>Anh làm rất nhiều thứ, để đồng tiền trong ví chật<br>Người ta không quý con ong, mà người ta chỉ quý mật<br>Em hỏi anh nhạc sao hay anh gọi nó là bí thuật, yo<br>Em hỏi anh nhạc sao hay anh gọi nó là bí thuật, yo<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Nước đã hình thành trong hàng triệu năm (triệu năm)<br>Cát đã hình thành trong hàng triệu năm (triệu năm)<br>Biển cả hình thành trong hàng triệu năm (triệu năm)<br>Sao em làm anh buồn sau hàng triệu năm? (triệu năm)<br>Gặp em từ thể đơn bào rồi tiến hoá (tiến hoá)<br>Xa em từ khi thềm lục địa đầy biến hoá (biến hoá)<br>Muốn được ôm em qua kỷ Ju-ra<br>Hoá thạch cùng nhau trên những phiến đá (phá đá cùng nhau)<br>Rồi loài người tìm thấy lửa, anh lại tìm thấy em (yah)<br>Anh tưởng rằng mọi thứ sẽ được bùng cháy lên (yah)<br>Muốn được cùng em trồng rau bên hồ cá (hồ cá)<br>Nhưng tim em lúc đó đang là thời kì đồ đá (eh)<br>Anh đã tin vào em như tin vào thuyết nhật tâm<br>Như Ga-li-lê người ta nói anh thật hâm<br>Có lẽ Đác-win biết biển cả sẽ khô hơn<br>Nhưng anh tin ông ta không biết chúng ta đang tiến hoá để cô đơn<br>(Tiến hoá để cô đơn)<br>Và có lẽ Đác-win biết biển cả sẽ khô hơn<br>Nhưng anh tin ông ta không biết chúng ta đang tiến hoá để cô đơn<br>(Tiến hoá để cô đơn, yah, eh)<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm<br>Anh cô đơn giữa tinh không này<br>Muôn con sóng cuốn xô vào đây<br>Em cô đơn giữa mênh mông người<br>Và ta cô đơn đã hai triệu năm','https://data.chiasenhac.com/down2/2211/1/2210421-bda7e3ca/128/Hai%20Trieu%20Nam%20-%20Den_%20Bien.mp3', 298),
(2,1,'Đưa nhau đi trốn','Thật lòng em mơ, mơ cùng anh đi đến tận cùng<br>Tận cùng chân mây vượt núi cao hay biển sâu<br>Biết mấy là yêu cho vừa<br>Giết mấy thời gian cho vừa<br>Khi yêu ta mơ về nhau<br>Để thấy lắm lúc lòng mình nhẹ nhiều khi<br>Muốn ném hết tất cả để mà đi<br>Một lần mình sống như những đứa nhóc không nhà<br>Sớm thức dậy ở một nơi xa<br>Bố em hút rất nhiều thuốc<br>Mẹ em khóc mắt lệ nhoà<br>Bố anh thì đi lại còn mẹ anh gọi điện thoại đến từng nhà<br>Nhiều ngày rồi mình không về, không liên lạc được gì cả<br>Chỉ vỏn vẹn mảnh giấy "đừng lo, đêm nay con đi chơi xa"<br>Em ơi đi trốn với anh<br>Mình đi đến nơi có biển bạc núi xanh<br>Chạy con xe anh chở em tròng trành<br>Mình phóng tầm mắt ngắm chân trời mới toanh<br>Mình ngủ một giấc mà không cần báo thức<br>Giờ này mọi khi anh đang trong ca trực<br>Em thì đang lo ngày mai giảng đường<br>Ôi những thứ chán chường không tẹo nào háo hức<br>Mình rời thành phố chật chội náo nức<br>Nơi mà cả việc thở cũng làm ta lao lực<br>Mơ những con đường xa làm anh thấy rạo rực<br>Muốn đưa em đi trốn đến tận cùng trái đất<br>Anh chẳng cần biết là ngày nắng đẹp rạng ngời<br>Hay gió về, hay bão táp mưa rơi<br>Ngày mình đi với nhau ấy là ngày đẹp trời<br>Thì theo anh đi trốn em ơi<br>Thật lòng em mơ, mơ cùng anh đi đến tận cùng<br>Tận cùng chân mây vượt núi cao hay biển sâu<br>Biết mấy là yêu cho vừa<br>Giết mấy thời gian cho vừa<br>Khi yêu ta mơ về nhau<br>Để thấy lắm lúc lòng mình nhẹ nhiều khi<br>Muốn ném hết tất cả để mà đi<br>Một lần mình sống như những đứa nhóc không nhà<br>Sớm thức dậy ở một nơi xa<br>Em ơi anh chẳng muốn sống đời vẻ vang<br>Đời lên voi xuống chó, danh vọng hoặc bẽ bàng<br>Chỉ muốn êm ả với nhau qua ngày tháng<br>Hè xối gàu nước mát, lửa hồng khi đông sang<br>Nhưng ta càng lớn càng không có sức phòng thủ<br>Đời cuốn xô ta cả khi ta trốn trong phòng ngủ<br>Âu lo theo về dù ta đã khoá ba lần cửa<br>Trốn đi trốn đi không đời giết ta lần nữa<br>Em ơi đi trốn với nhau<br>Kệ vòng xe đó đưa mình đi tới đâu<br>Kệ cho nắng cháy, cho bụi phủ vai gầy<br>Kệ cơm kệ áo, kệ no đủ mai này<br>Sau lưng là bụi, trước mặt đường chân trời<br>Mình kệ những luật lệ mà mình thường vâng lời<br>Đời nói mình vô trách nhiệm, có vẻ không oan<br>Ừ thì một lần mình là trẻ không ngoan<br>Anh chưa từng lên kế hoạch cho cuộc đời anh<br>Sẽ là Mây đen kéo đến hay trời ngời xanh<br>Nhưng nếu em muốn thấy chân trời mới toanh<br>Thì em ơi đi trốn với anh<br>Nhiều hơn bầu không khí<br>Bớt đi những mệt nhoài<br>Cuộc đời đâu được mấy<br>Bình yên những sớm mai<br>Em ơi đi trốn với anh<br>Mình đi đến nơi có biển bạc núi xanh<br>Chạy con xe anh chở em tròng trành<br>Mình phóng tầm mắt ngắm chân trời mới toanh<br>Và sẽ là những bình mình không có tiếng chuông báo thức<br>Và tất cả điều đó làm anh thấy háo hức<br>Thật lòng em mơ mơ cùng anh đi đến tận cùng<br>Tận cùng chân mây vượt núi cao hay biển sâu<br>Biết mấy là yêu cho vừa<br>Giết mấy thời gian cho vừa<br>Khi yêu ta mơ về nhau<br>Để thấy lắm lúc lòng mình nhẹ nhiều khi<br>Muốn ném hết tất cả để mà đi<br>Một lần mình sống như những đứa nhóc không nhà<br>Sớm thức dậy ở một nơi xa<br>Thật lòng em mơ mơ cùng anh đi đến tận cùng<br>Tận cùng chân mây vượt núi cao hay biển sâu<br>Biết mấy là yêu cho vừa<br>Giết mấy thời gian cho vừa<br>Khi yêu ta mơ về nhau<br>Để thấy lắm lúc lòng mình nhẹ nhiều khi<br>Muốn ném hết tất cả để mà đi<br>Một lần mình sống như những đứa nhóc không nhà<br>Sớm thức dậy ở một nơi xa','https://data3.chiasenhac.com/downloads/2106/1/2105420/128/Dua%20nhau%20di%20tron%20-%20Den.mp3', 240),
(3,2,'Hẹn ước từ hư vô','Mình không tìm nhau<br>Mà vô tình vương vấn sau tiếng ca chiều mưa<br>Thân thương trong từng đong đưa mắt môi về em<br>Mùa xuân ấy có nụ cười lấp lánh<br>Ở gần bên anh<br>Em vui như bao nhiêu lâu trở lại mùa yêu đầu<br>Vẫn bỡ ngỡ ban sơ ở trong từng ánh nhìn<br>Vẫn da diết nỗi ưu phiền khi phải chờ mong<br>Hay là đôi ta hẹn ước từ hư vô<br>Để gặp nhau chỉ khi vừa ngày giờ<br>Anh và em bước chung đoạn đường đời<br>Mình yêu nhau có trời đất biết<br>Ta được chung đôi như suối, được trăng thanh<br>Dịu êm yên lắng như em an bình mọi giây với anh<br>Sau những cô đơn tổn thương đã xa<br>Ta lại thấy con tim hiền hòa<br>Hạt mưa trên mái hiên<br>Lâu nay thi thoảng nhắc em không quên ngày nên thơ<br>Riêng em chỉ biết cảm ơn nhân duyên chuyện hôm qua<br>Vì mùa hoa ấy anh sang thăm em<br>Cùng một tình yêu lớn lao<br>Bàn tay, đôi vai<br>Đưa em tự do bước theo giấc mơ chẳng lo sợ (chẳng lo sợ)<br>Và cách chúng ta thấu hiểu nhau<br>Ân cần muôn khoảnh khắc<br>Chẳng thua gì phép màu<br>Hay là đôi ta hẹn ước từ hư vô<br>Để gặp nhau chỉ khi vừa ngày giờ<br>Anh và em bước chung đoạn đường đời<br>Mình yêu nhau có trời đất biết<br>Ta được chung đôi như suối, được trăng thanh<br>Dịu êm yên lắng như em an bình mọi giây với anh<br>Sau những cô đơn tổn thương đã xa<br>Ta lại thấy con tim hiền hòa<br>Hay là đôi ta hẹn ước từ hư vô<br>Để gặp nhau chỉ khi vừa ngày giờ<br>Anh và em bước chung đoạn đường đời<br>Mình yêu nhau có trời đất biết<br>Ta được chung đôi như suối, được trăng thanh<br>Dịu êm yên lắng như em an bình mọi giây với anh<br>Sau những cô đơn tổn thương đã xa<br>Ta lại thấy con tim hiền hòa<br>Sau những cô đơn tổn thương đã xa<br>Ta lại thấy con tim hiền hòa','https://data.chiasenhac.com/down2/2231/1/2230177-067507fa/128/Hen%20Uoc%20Tu%20Hu%20Vo%20Live_%20-%20My%20Tam_.mp3', 247),
(3,2,'Đúng cũng thành sai','Quá đủ rồi, quá mệt rồi, quá muộn rồi<br>Tình yêu không có lỗi, lỗi là do chúng ta thôi<br>Vì khi yêu là sẽ luôn đúng, chẳng bao giờ đắn đo<br>Muốn yêu tìm cách, hết yêu thì tìm lý do<br>Ngày nào còn yêu thì luôn nghĩ đến cho nhau bấy nhiêu<br>Mà giờ người ta lạnh lùng đến thế dẫu mình nuông chiều<br>Chẳng hề hay biết cuộc tình đã khác trước kia quá nhiều<br>Cứ vô tư dành tặng mọi thứ cho người mình yêu<br>Nếu người ta đã nghĩ họ đúng<br>Điều mình nói đúng cũng thành sai<br>Nếu người ta đã không cần nữa<br>Mình làm gì thì cũng không phải<br>Còn yêu thì sẽ luôn nhẫn nại<br>Cho dù ai đang sai<br>Đã hết yêu rồi, cố gắng lại làm phiền người ta thôi<br>Nếu người ta đã luôn giận dỗi<br>Tìm mọi cách khiến ta buông xuôi<br>Nếu tình yêu đã không còn mới<br>Đừng ngạc nhiên người đó thay đổi<br>Đối với mình họ là thế giới<br>Nhưng người ta nào có nghĩ ngợi<br>Đã hết yêu rồi, đúng cũng thành sai thôi<br>Ngày nào còn yêu thì luôn nghĩ đến cho nhau bấy nhiêu<br>Mà giờ người ta lạnh lùng đến thế dẫu mình nuông chiều<br>Chẳng hề hay biết cuộc tình đã khác trước kia quá nhiều<br>Cứ vô tư dành tặng mọi thứ cho người mình yêu<br>Nếu người ta đã nghĩ họ đúng<br>Điều mình nói đúng cũng thành sai<br>Nếu người ta đã không cần nữa<br>Mình làm gì thì cũng không phải<br>Còn yêu thì sẽ luôn nhẫn nại<br>Cho dù ai đang sai<br>Đã hết yêu rồi, cố gắng lại làm phiền người ta thôi<br>Nếu người ta đã luôn giận dỗi<br>Tìm mọi cách khiến ta buông xuôi<br>Nếu tình yêu đã không còn mới<br>Đừng ngạc nhiên người đó thay đổi<br>Đối với mình họ là thế giới<br>Nhưng người ta nào có nghĩ ngợi<br>Đã hết yêu rồi, đúng cũng thành sai thôi<br>Nếu người ta đã nghĩ họ đúng<br>Điều mình nói đúng cũng thành sai<br>Nếu người ta đã không cần nữa<br>Mình làm gì thì cũng không phải<br>Còn yêu thì sẽ luôn nhẫn nại<br>Cho dù ai đang sai<br>Đã hết yêu rồi, cố gắng lại làm phiền người ta thôi<br>Nếu người ta đã luôn giận dỗi<br>Tìm mọi cách khiến ta buông xuôi<br>Nếu tình yêu đã không còn mới<br>Đừng ngạc nhiên người đó thay đổi<br>Đối với mình họ là thế giới<br>Nhưng người ta nào có nghĩ ngợi<br>Đã hết yêu rồi, đúng cũng thành sai thôi<br>Đối với mình họ là thế giới<br>Nhưng người ta nào có nghĩ ngợi<br>Đã hết yêu rồi, đúng cũng thành sai thôi','https://data3.chiasenhac.com/downloads/2120/1/2119974-401a7459/128/Dung%20Cung%20Thanh%20Sai%20-%20My%20Tam.mp3', 287),
(3,2,'Người hãy quên em đi','Người yêu hỡi<br>Dù gì cũng xa nhau rồi<br>Ngày nào chiếc hôn bao đêm rã rời<br>Giờ đã hết rồi, chẳng còn hơi ấm trên đầu môi<br>Người yêu hỡi<br>Giờ đây tiếng yêu phai phôi<br>Chỉ còn những đêm cô đơn rối bời<br>Giọt nước mắt rơi, lặng nghe dòng thời gian trôi<br>Người hãy quên em đi<br>Và đừng yêu em nữa<br>Nếu anh không còn gì để vương vấn<br>Người hãy quên em đi<br>Đừng chờ mong chi nữa<br>Tiếc thương gì cho lòng thêm xót xa<br>Vì tình yêu nay sẽ chẳng lâu bền<br>Vậy coi như mình kết thúc êm đềm<br>Tình yêu như làn gió thoáng qua thềm<br>Người hãy quên em đi<br>Từng lời hứa<br>Hẹn thề có nhau trọn đời<br>Ngày xưa sánh đôi vô tư giữa đời<br>Chẳng hề nghĩ ngợi<br>Chỉ cần hai chúng ta mà thôi<br>Để giờ đây<br>Lòng đớn đau khi ai đổi thay<br>Lời hứa xưa kia tan theo khói mây<br>Mình em chốn đây<br>Một mình ôm bao đắng cay<br>Người hãy quên em đi<br>Và đừng yêu em nữa<br>Nếu anh không còn gì để vương vấn<br>Người hãy quên em đi<br>Đừng chờ mong chi nữa<br>Tiếc thương gì cho lòng thêm xót xa<br>Vì tình yêu nay sẽ chẳng lâu bền<br>Vậy coi như mình kết thúc êm đềm<br>Tình yêu như làn gió thoáng qua thềm<br>Người hãy quên em đi<br>Người hãy quên em đi<br>Và đừng yêu em nữa<br>Nếu anh không còn gì để vương vấn<br>Người hãy quên em đi<br>Đừng chờ mong chi nữa<br>Tiếc thương gì cho lòng thêm xót xa<br>Vì tình yêu nay sẽ chẳng lâu bền<br>Vậy coi như mình kết thúc êm đềm<br>Tình yêu như làn gió thoáng qua thềm<br>Người hãy quên em đi<br>','https://data.chiasenhac.com/down2/2162/1/2161962-4fc662d4/128/nguoi%20hay%20quen%20em%20di%20-%20my%20tam.mp3', 232),
(4,2,'Nếu anh đi','… Một câu nói anh muốn chia tay<br>Em đã biết sẽ đau đớn như vậy<br>Mà nước mắt đó vẫn rơi, không thể ngừng lại<br>Tiếc nuối những gì cho cả hai<br>… Vì em biết đã có những sai lầm<br>Dù em đã cố giữ lấy anh đến vô cùng<br>Và em đâu muốn chúng ta kết thúc như vậy<br>Nhưng có lẽ đã đến lúc buông tay<br>… Nếu anh đi trái tim này buồn biết mấy<br>Dù biết trong lòng còn yêu còn thương lắm đấy<br>Nếu anh đi hãy cho em được nói với anh một lời<br>Dù tình ta vỡ đôi, em vẫn yêu anh<br>… Ngày chia tay phố quen có mưa rơi<br>Từng giọt mưa mang theo những yêu dấu xa vời<br>Và em sẽ cố bước qua sẽ sống tốt thôi<br>Hãy cứ tin em đừng nghĩ ngợi<br>… Nếu anh đi trái tim này buồn biết mấy<br>Dù biết trong lòng còn yêu còn thương lắm đấy<br>Nếu anh đi hãy cho em được nói với anh một lời<br>Dù tình ta vỡ đôi, em vẫn yêu anh<br>… Nếu anh đi trái tim này buồn biết mấy<br>Dù biết trong lòng còn yêu còn thương lắm đấy<br>Nếu anh đi hãy cho em được nói với anh một lời<br>Dù tình ta vỡ đôi<br>… Nếu anh đi trái tim này buồn biết mấy<br>Dù biết trong lòng còn yêu còn thương lắm đấy<br>Nếu anh đi hãy cho em được nói với anh một lời<br>Dù tình ta vỡ đôi, em vẫn yêu anh','https://data33.chiasenhac.com/downloads/1993/1/1992853/128/Neu%20Anh%20Di%20-%20My%20Tam.mp3', 251),
(4,2,'Chuyện như chưa bắt đầu','Mưa rơi trên nỗi đau nào lòng chợt thấy nghẹn ngào vì bao khát khao<br>Đợi chờ làm chi nỗi đau ai ngờ tình yêu đôi ta như là mơ<br>Bao yêu thương đã muộn màng vì mình đã quá vội vàng để lòng nát tan<br>Vậy mà giờ sao nói không nên lời lệ rơi trên đôi mắt em<br>Từ trong con tim em cứ nhớ anh vô bờ<br>Tình yêu ấy cũng đã khiến em mong chờ<br>Góc phố vắng anh mình em bơ vơ<br>Bao giấc mộng này tan vỡ<br>Thì thôi xem như chuyện mình chưa bắt đầu<br>Để cho lòng nhẹ vơi nỗi sầu<br>Như cành hoa đã thôi úa màu mà ta giữ lại cho nhau ...<br>Mưa rơi trên nỗi đau nào lòng chợt thấy nghẹn ngào vì bao khát khao<br>Đợi chờ làm chi nỗi đau ai ngờ tình yêu đôi ta như là mơ<br>Bao yêu thương đã muộn màng vì mình đã quá vội vàng để lòng nát tan<br>Vậy mà giờ sao nói không nên lời lệ rơi trên đôi mắt em<br>Từ trong con tim em cứ nhớ anh vô bờ<br>Tình yêu ấy cũng đã khiến em mong chờ<br>Góc phố vắng anh mình em bơ vơ<br>Bao giấc mộng này tan vỡ<br>Thì thôi xem như chuyện mình chưa bắt đầu<br>Để cho lòng này nhẹ vơi nỗi sầu<br>Như cành hoa đã thôi úa màu mà ta giữ lại cho nhau ...<br>Em xin yêu anh trong cơn mơ<br>Người hãy đến dù là giấc mơ<br>Dẫu biết quá ngây thơ mà lòng vẫn nhớ<br>Từ trong con tim em cứ nhớ anh vô bờ<br>Tình yêu ấy cũng đã khiến em mong chờ<br>Góc phố vắng anh mình em bơ vơ<br>Bao giấc mộng này tan vỡ<br>Thì thôi xem như chuyện mình chưa bắt đầu<br>Để cho lòng nhẹ vơi nỗi sầu<br>Như cành hoa đã thôi úa màu mà ta giữ lại cho nhau ...<br>Như cành hoa đã thôi úa màu mà ta giữ lại cho nhau ...','https://data00.chiasenhac.com/downloads/1849/1/1848385-b3bb70ba/128/Chuyen%20Nhu%20Chua%20Bat%20Dau%20Remix_%20-%20My%20Tam.mp3', 274),
(4,2,'Tay vớt ánh sáng','Em đưa tay xuống dưới sông để vớt ánh trăng<br>Thì ra chỉ là ánh trăng lừa dối<br>Em đưa cho anh trái tim còn những ngây thơ<br>Mà anh trói em bằng những dối lừa<br>Anh mang tình ca da diết khiến em say lòng<br>Anh mang lời yêu tha thiết khiến em bật khóc<br>Anh đi để lại hình bóng khiến em đau lòng<br>Em đưa tay xuống dưới sông để vớt ánh trăng<br>Giờ đây em ôm đàn và hát bài ca ngày xưa anh hát<br>Hát cho chuyện tình đắm say chúng mình<br>Chỉ là những vấn vương vô nghĩa tựa như lời yêu xưa kia<br>Thế sao em còn ngồi hát với ánh trăng<br>Em đưa tay xuống dưới sông để vớt ánh trăng<br>Thì ra chỉ là ánh trăng lừa dối<br>Em đưa cho anh trái tim còn những ngây thơ<br>Mà anh trói em bằng những dối lừa<br>Anh mang tình ca da diết khiến em say lòng<br>Anh mang lời yêu tha thiết khiến em bật khóc<br>Anh đi để lại hình bóng khiến em đau lòng<br>Em đưa tay xuống dưới sông để vớt ánh trăng<br>Giờ đây em ôm đàn và hát bài ca ngày xưa anh hát<br>Hát cho chuyện tình đắm say chúng mình<br>Chỉ là những vấn vương vô nghĩa tựa như lời yêu xưa kia<br>Thế sao em còn ngồi hát với ánh trăng<br>Giờ đây em ôm đàn và hát bài ca ngày xưa anh hát<br>Hát cho chuyện tình đắm say chúng mình<br>Chỉ là những vấn vương vô nghĩa tựa như lời yêu xưa kia<br>Thế sao em còn ngồi hát với ánh trăng<br>Thế sao em còn ngồi vớt ánh trăng','https://data.chiasenhac.com/down2/2239/1/2238252-716cbfe7/128/Tay%20Vot%20Anh%20Trang%20Live_%20-%20My%20Tam_.mp3', 259),
(5,3,'Easy on me','','https://data25.chiasenhac.com/download2/2202/1/2201284-0ac3f306/128/Easy%20On%20Me%20-%20Adele.mp3', 222),
(5,3,'Oh my God','','https://data25.chiasenhac.com/download2/2208/1/2207650-c46699c6/128/Oh%20My%20God%20-%20Adele.mp3', 225),
(5,3,'Rolling In The Deep','','https://data51.chiasenhac.com/downloads/1002/1/1001652-bcd6f057/128/Rolling%20In%20The%20Deep%20-%20Adele.mp3',228),
(6,3,'Someone Like You','','https://data51.chiasenhac.com/downloads/1008/1/1007682-ca8a13ba/128/Someone%20Like%20You%20-%20Adele.mp3',285),
(6,3, 'Skyfall', '', 'https://data52.chiasenhac.com/downloads/1034/1/1033232-c8b9695d/128/Skyfall%20-%20Adele.mp3', 288),
(6,3, 'Make you Feel my love', '', 'https://data52.chiasenhac.com/downloads/1055/1/1054745-618061e5/128/Make%20You%20Feel%20My%20Love%20-%20Adele.mp3', 212),
(7,4, 'Vì Anh Đâu Có Biết', '', 'https://data.chiasenhac.com/down2/2276/2/2275598-347d84a7/128/Vi%20Anh%20Dau%20Co%20Biet%20-%20Madihu_%20Vu.mp3' , 241),
(7,4, 'Anh Nhớ Ra', '', 'https://data.chiasenhac.com/down2/2275/2/2274553-e0acda2c/128/Anh%20Nho%20Ra%20-%20Vu_%20Trang.mp3', 276),
(7,4, 'Lạ Lùng', '','https://data38.chiasenhac.com/downloads/1869/2/1868806-86119e1f/128/La%20Lung%20-%20Vu.mp3',  261),
(8,4, 'Cô ta','','https://data.chiasenhac.com/down2/2275/2/2274554-bb80715f/128/Co%20ta%20-%20Vu.mp3', 214),
(8,4, 'Bước Qua Nhau','','https://data25.chiasenhac.com/download2/2207/2/2206490-67cccb4c/128/Buoc%20Qua%20Nhau%20-%20Vu.mp3', 257 ),
(8,4, 'Đông Kiếm Em','','https://data2.chiasenhac.com/stream2/1634/2/1633410-9f7c7981/128/Dong%20Kiem%20Em%20-%20Vu.mp3', 246),
(9,5, 'Mưa','','https://data53.chiasenhac.com/downloads/1081/2/1080427-ccf59e10/128/Mua%20-%20Thuy%20Chi_%20M4U.mp3', 280),
(9,5, 'Xe Đạp','','https://data53.chiasenhac.com/downloads/1081/2/1080426-a9b8f03a/128/Xe%20Dap%20-%20Thuy%20Chi_%20M4U.mp3', 286),
(9,5, 'Cơn mưa tình yêu','','https://data16.chiasenhac.com/downloads/2142/2/2141884-bac3568d/128/Con%20mua%20tinh%20yeu%20-%20Ha%20Anh%20Tuan%20ft%20Phuong.mp3', 295),
(10,5, 'Con Đường Hạnh Phúc','','https://data62.chiasenhac.com/downloads/1338/2/1337928-0d6025b0/128/Con%20Duong%20Hanh%20Phuc%20-%20Thuy%20Chi.mp3', 303),
(10,5, 'Con Thuyền Ước Mơ','','https://data58.chiasenhac.com/downloads/1233/2/1232654-b5661414/128/Con%20Thuyen%20Uoc%20Mo%20-%20Thuy%20Chi_%20M4U.mp3', 259),
(10,5, 'Chiều Nay Không Có Mưa Bay','','https://data61.chiasenhac.com/downloads/1327/2/1326093-7ce48179/128/Chieu%20Nay%20Khong%20Co%20Mua%20Bay%20-%20Trung%20Quan.mp3', 296),
(11,7, 'Lift Me Up','','https://data.chiasenhac.com/down2/2276/2/2275514-4b22e499/128/Lift%20Me%20Up%20-%20Rihanna.mp3', 196),
(11,7, 'Love On The Brain','','https://data2.chiasenhac.com/stream2/1621/2/1620958-9d3e9e2d/128/Love%20On%20The%20Brain%20-%20Rihanna.mp3', 224),
(11,7, 'Umbrella','','https://data52.chiasenhac.com/downloads/1054/2/1053758-33632945/128/Umbrella%20-%20Rihanna_%20Jay-Z.mp3', 256),
(12,7, 'Needed Me','','https://data2.chiasenhac.com/stream2/1621/2/1620954-38993951/128/Needed%20Me%20-%20Rihanna.mp3', 191),
(12,7, 'This Is What You Came For','','', 222),
(12,7, 'Do not Stop The Music','','https://data55.chiasenhac.com/downloads/1121/2/1120268-371d8fd8/128/Don_t%20Stop%20The%20Music%20-%20Rihanna.mp3', 267),
(13,8, 'Ski Mask Way','','https://data57.chiasenhac.com/downloads/1209/2/1208287-c28ca52d/128/Ski%20Mask%20Way%20Eminem%20Remix_%20-%20Eminem.mp3', 184),
(13,8, 'Without Me','','https://data51.chiasenhac.com/downloads/1008/2/1007978-49c57724/128/Without%20Me%20-%20Eminem.mp3', 291),
(13,8, 'The Real Slim Shady','','https://data51.chiasenhac.com/downloads/1017/2/1016239-bc292708/128/The%20Real%20Slim%20Shady%20-%20Eminem.mp3', 224),
(14,8, 'Stan','','https://data51.chiasenhac.com/downloads/1017/2/1016235-2d84c531/128/Stan%20-%20Eminem.mp3', 404),
(14,8, 'Godzilla','','https://data16.chiasenhac.com/downloads/2141/2/2140372-5761a672/128/Godzilla%20-%20Eminem_%20Juice%20WRLD.mp3', 210),
(14,8, 'Love The Way You Lie','','https://data51.chiasenhac.com/downloads/1010/2/1009302-39b17edb/128/Love%20The%20Way%20You%20Lie%20-%20Eminem_%20Rihanna.mp3', 263),
(15,9, 'Baby','','https://data51.chiasenhac.com/downloads/1004/2/1003897-3b7b26f4/128/Baby%20-%20Justin%20Bieber_%20Ludacris.mp3', 214),
(15,9, 'Somebody To Love','','https://data52.chiasenhac.com/downloads/1039/2/1038512-5daf924a/128/Somebody%20To%20Love%20-%20Justin%20Bieber.mp3', 220),
(15,9, 'Up','','https://data51.chiasenhac.com/downloads/1004/2/1003902-97eb5a4b/128/Up%20-%20Justin%20Bieber.mp3', 234),
(16,9, '2 Much','','https://data.chiasenhac.com/down2/2160/2/2159633-d3946e0c/128/2%20Much%20-%20Justin%20Bieber.mp3', 152),
(16,9, 'Deserve You','','https://data.chiasenhac.com/down2/2160/2/2159634-966826b6/128/Deserve%20You%20-%20Justin%20Bieber.mp3', 187),
(16,9, 'Off My Face','','https://data.chiasenhac.com/down2/2160/2/2159636-57db7004/128/Off%20My%20Face%20-%20Justin%20Bieber.mp3', 156),
(17,10, 'Bad Habits','','https://data.chiasenhac.com/down2/2178/2/2177603-ac12fe38/128/Bad%20Habits%20-%20Ed%20Sheeran.mp3', 231),
(17,10, 'Perfect','','https://data17.chiasenhac.com/downloads/2153/2/2152901-c30ec5b5/128/Perfect%20-%20Ed%20Sheeran.mp3', 263),
(17,10, 'Shape Of You','','https://data.chiasenhac.com/down2/2223/2/2222425-16b3f5d6/128/Shape%20Of%20You%20-%20ed%20sheeran.mp3', 233),
(18,10, 'Sandman','','https://data25.chiasenhac.com/download2/2204/2/2203732-cbacb42c/128/Sandman%20-%20Ed%20Sheeran.mp3', 259),
(18,10, 'One Life','','https://data.chiasenhac.com/down2/2249/2/2248321-0f1ed4e1/128/One%20Life%20-%20Ed%20Sheeran.mp3', 231),
(18,10, 'Peru','','https://data.chiasenhac.com/down2/2214/2/2213875-a097c1c5/128/Peru%20-%20Fireboy%20DML_%20Ed%20Sheeran.mp3', 187);

insert into users (name, email, pass, is_admin, prefences, remember_token) values 
('hoang khanh', 'ngockhanhbg97@gmail.com', 'khanhbg12', true,'','');

insert into commoninteractives (songId, numberOfListen, numberOfLiked) values
(1, 100, 99),(2, 1, 1),(3, 2, 1),(4, 33, 1),(5, 1, 1),(6, 1, 1),
(7, 100, 99), (8, 1, 1),(9, 3, 1),(11, 1, 1),(12, 1, 1),(10, 100, 99), 
(13, 100, 99), (14, 1, 1),(15, 6, 1),(16, 1, 1),(17, 1, 1), (18, 1, 1),
(19, 100, 99),(20, 1, 1),(21, 1, 1),(22, 8, 1),(23, 21, 1), (24, 1, 1),(25, 1, 1),(26, 1, 1),(27, 1, 1),
(28, 100, 99), (29, 35, 1),(30, 11, 1),
(31, 100, 99),(32, 1, 1),(33, 1, 1),(34, 1, 1),(35, 1, 1), (36, 1, 1),
(37, 100, 99), (38, 1, 1),(39, 14, 1),(40, 1, 1),(41, 1, 1), (42, 1, 1),
(43, 100, 99), (44, 1, 1),(45, 15, 1),(46, 18, 1),(47, 1, 1), (48, 1, 1),
(49, 100, 99), (50, 1, 1),(51, 1, 1),(52, 20, 1),(53, 1, 1),
(54, 100, 99);


insert into playlist (userId, name, rule) values  
(1, 'Thư giãn', 'Nhạc nghe lúc thư giãn');


insert into playlist_song (playlistId, songId) values  
(1, 1), (1, 2), (1, 3), (1, 4), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10);



alter table songs
add foreign key (albumId) references  albums(id);

alter table songs
add foreign key (artistId) references artists(id);

alter table playlist_song
add foreign key (playlistId) references playlist(id);

alter table playlist_song
add foreign key (songId) references songs(id);

alter table playlist
add foreign key (userId) references users(id);

alter table commoninteractives
add foreign key (songId) references songs(id);

-- alter table interations
-- add foreign key (user_id) references users(id);

-- alter table interations
-- add foreign key (song_id) references songs(id);

ALTER TABLE songs
DROP CONSTRAINT songs_ibfk_1;
ALTER TABLE songs
DROP CONSTRAINT songs_ibfk_2;
ALTER TABLE playlist_song
DROP CONSTRAINT playlist_song_ibfk_1;
ALTER TABLE commoninteractives
DROP constraint commoninteractives_ibfk_1;

ALTER TABLE playlist
DROP CONSTRAINT playlist_song_ibfk_1;


select * from commoninteractives;
select * from songs;
SET SQL_SAFE_UPDATES = 0;
delete from commoninteractives;




-- ALTER TABLE albums
-- RENAME COLUMN artist_id TO artistId;

-- ALTER TABLE interations
-- RENAME COLUMN user_id TO userId;

-- ALTER TABLE interations
-- RENAME COLUMN song_id TO songId;

-- ALTER TABLE playlist
-- RENAME COLUMN user_id TO userId;

-- ALTER TABLE playlist_song
-- RENAME COLUMN playlist_id TO playlistId;

-- ALTER TABLE playlist_song
-- RENAME COLUMN song_id TO songId;

-- ALTER TABLE songs
-- RENAME COLUMN album_id TO albumId;

-- ALTER TABLE songs
-- RENAME COLUMN artist_id TO artistId;



-- ALTER TABLE albums
-- MODIFY id int;
-- ALTER TABLE albums
-- MODIFY artistId int;
-- ALTER TABLE artists
-- MODIFY id int;
-- ALTER TABLE interations
-- MODIFY id int;
-- ALTER TABLE interations
-- MODIFY userId int;
-- ALTER TABLE interations
-- MODIFY songId int;  
-- ALTER TABLE playlist
-- MODIFY id int; 
-- ALTER TABLE playlist
-- MODIFY userId int; 
-- ALTER TABLE playlist_song
-- MODIFY id int;
-- ALTER TABLE playlist_song
-- MODIFY playlistId int;
-- ALTER TABLE playlist_song
-- MODIFY songId int;
-- ALTER TABLE songs
-- MODIFY id int;
-- ALTER TABLE songs
-- MODIFY albumId int;
-- ALTER TABLE songs
-- MODIFY artistId int;

select * from songs;




































