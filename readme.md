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
Ng�n ng? l?p tr�nh s? d?ng: PHP
Framwork s? d?ng: Laravel, ngo�i ra c�n d�ng API.
CSDL d�ng: phpmyadmin
*CH� TH�CH V? GIAO DI?N
C� 3 trang ch�nh: index, topic/{id} v� new_topic
	- index: l� trang show t?t c? c�c � tu?ng hay c�u h?i hay d?t v?n d? trong di?n d�n
		 show t?t c? c�c category cung nhu t?t c? c�c users
		 Khi click v�o t?ng topic th� s? hi?n ra trang m?i l� topic chi ti?t theo ID
	- topic/{id}: l� trang cho bi?t chi chi ti?t v? c�i topic v� nh?ng reply v? topic d�
	- new_topic: Khi click button Start New Topic ? tr�n th� s? hi?n trang m?i l� trang new_topic
		     Trang n�y khi di?n d?y d? th�ng tin v� ?n n�t post th� c�i topic s? dang ra ngo�i di?n d�n
*CH� TH�CH V? CSDL
C� 4 table: users, topic, category v� reply
	- users: id, username, passwork, url_img, is_admin
	- topic: id, title, description, date_post, id_category, id_user
	- category: id, name_category
	- reply: id, id_user, message, date_reply, id_topic
*NH?NG V?N �? �� GI?I QUY?T ? B�I T?P N�Y
	- Thi?t k? giao di?n
	- T?o CSDL
	- V? Backend th� d� vi?t m?t s? ch?c nang co b?n c?n c� ? 1 di?n d�n l�: dang topic, v� reply topic, xem c�c topic,...
*V?N �? CHUA �?T �U?C V� HU?NG PH�T TRI?N
	- V� th?i gian h?n h?p n�n nhi?u ch?c nang nhu: dang nh?p, dang xu?t user; like, dislike c�c reply;...
	=> T? d� hu?ng ph�t tri?n n?u c� th�m th?i gian l�: Vi?t ho�n ch?nh c�c ch?c nang n�i tr�n, t? d� s? t?o ra 1 trang forum ho�n thi?n hon. 
