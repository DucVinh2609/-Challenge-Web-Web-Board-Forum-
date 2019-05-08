
"# -Challenge-Web-Web-Board-Forum-" 
Ngôn ngũ lập trình sử dụng: PHP
Framwork sử dụng: Laravel, ngoài ra còn dùng API.
CSDL dùng: phpmyadmin
*CHÚ THÍCH VỀ GIAO DIỆN
Có 3 trang chính: index, topic/{id} và new_topic
	- index: là trang show tất cả các ý tưởng hay câu hỏi hay đặt vấn đề trong diễn đàn
		 show tất cả các category cũng như tất cả các users
		 Khi click vào từng topic thì sẽ hiện ra trang mới là topic chi tiết theo ID
	- topic/{id}: là trang cho biết chi tiết về cái topic và những reply của topic đó
	- new_topic: Khi click button Start New Topic ở trên thì sẽ hiện trang mới là trang new_topic
		     Trang này khi điền đầy đủ thông tin và ấn nút post thì cái topic sẽ được đăng ra ngoài diễn đàn
*CHÚ THÍCH VỀ CSDL
Có 4 table: users, topic, category và reply
	- users: id, username, passwork, url_img, is_admin
	- topic: id, title, description, date_post, id_category, id_user
	- category: id, name_category
	- reply: id, id_user, message, date_reply, id_topic
*NHŨNG VẤN ÐỀ ÐÃ GIẢI QUYẾT CỦA BÀI TẬP NÀY
	- Thiết kế giao diện
	- Tạo CSDL
	- Và Backend thì đã viết một số chức năng cơ bản cần có của 1 diễn đàn là: đăng topic, và reply topic, xem các topic,...
*VẤN ÐỀ CHƯA ÐẠT ÐƯỢC VÀ HƯỚNG PHÁT TRIỂN
	- Vì thời gian hạn hẹp nên nhiều chức năng như: đăng nhập, đăng xuất user; like, dislike các reply;...
	=> Từ đó hướng phát triển nếu có thêm thời gian là: Việc hoàn chỉnh các chức năng nói trên, từ đó sẽ tạo ra 1 trang forum hoàn thiện hơn.


Để Sử dụng DB: Cần Import file forumofducvinh.sql vào mysql để chạy.
