<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost you and your team's skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)
- [Abdel Elrafa](https://abdelelrafa.com)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).
"# -Challenge-Web-Web-Board-Forum-" 
Ngôn ng? l?p trình s? d?ng: PHP
Framwork s? d?ng: Laravel, ngoài ra còn dùng API.
CSDL dùng: phpmyadmin
*CHÚ THÍCH V? GIAO DI?N
Có 3 trang chính: index, topic/{id} và new_topic
	- index: là trang show t?t c? các ý tu?ng hay câu h?i hay d?t v?n d? trong di?n dàn
		 show t?t c? các category cung nhu t?t c? các users
		 Khi click vào t?ng topic thì s? hi?n ra trang m?i là topic chi ti?t theo ID
	- topic/{id}: là trang cho bi?t chi chi ti?t v? cái topic và nh?ng reply v? topic dó
	- new_topic: Khi click button Start New Topic ? trên thì s? hi?n trang m?i là trang new_topic
		     Trang này khi di?n d?y d? thông tin và ?n nút post thì cái topic s? dang ra ngoài di?n dàn
*CHÚ THÍCH V? CSDL
Có 4 table: users, topic, category và reply
	- users: id, username, passwork, url_img, is_admin
	- topic: id, title, description, date_post, id_category, id_user
	- category: id, name_category
	- reply: id, id_user, message, date_reply, id_topic
*NH?NG V?N Ð? ÐÃ GI?I QUY?T ? BÀI T?P NÀY
	- Thi?t k? giao di?n
	- T?o CSDL
	- V? Backend thì dã vi?t m?t s? ch?c nang co b?n c?n có ? 1 di?n dàn là: dang topic, và reply topic, xem các topic,...
*V?N Ð? CHUA Ð?T ÐU?C VÀ HU?NG PHÁT TRI?N
	- Vì th?i gian h?n h?p nên nhi?u ch?c nang nhu: dang nh?p, dang xu?t user; like, dislike các reply;...
	=> T? dó hu?ng phát tri?n n?u có thêm th?i gian là: Vi?t hoàn ch?nh các ch?c nang nói trên, t? dó s? t?o ra 1 trang forum hoàn thi?n hon. 
