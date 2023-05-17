-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 24 2022 г., 04:00
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `comp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `img_name` text NOT NULL,
  `head_text_ru` text NOT NULL,
  `head_text_tm` text NOT NULL,
  `desc_text_ru` text NOT NULL,
  `desc_text_tm` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `img_name`, `head_text_ru`, `head_text_tm`, `desc_text_ru`, `desc_text_tm`, `created_at`, `updated_at`) VALUES
(5, '895984eec63f7488cb4b70f1243dcfd9.jpg', 'Ремонт персональных компьютеров и ноутбуков', 'Şahsy kompýuterleri we noutbuklary bejermek', 'Быстрый и качественный ремонт компьютеров, ремонт ноутбуков, любая компьютерная помощь', 'Çalt we ýokary hilli kompýuter abatlamak, noutbuk abatlamak, islendik kompýuter kömek edýär', '13.07.2022', ''),
(6, '1a757e484927b3a9250da79084fe75e4.jpg', 'Ремонт принтеров и оргтехники', 'Printerleri we ofis enjamlaryny abatlamak', 'Быстрый и качественный ремонт принтеров, шредеров, 3д притеров и ламинаторов в Ашгабаде', 'Aşgabatda printerleri, döwüjileri, 3D printerleri we laminatorlary çalt we ýokary hilli bejermek', '13.07.2022', ''),
(7, '1b85291d97ac00e64a21e859b7c0615c.jpg', 'Ремонт и установка систем видеонаблюдения', 'Wideo gözegçilik ulgamlaryny abatlamak we oturtmak', 'Все работы мы проводим в сжатые сроки, официальная гарантия на проведённые работы.', 'Workhli işleri gysga wagtyň içinde ýerine ýetirýäris, ýerine ýetirilen işiň resmi kepilligi.', '13.07.2022', ''),
(8, '85075f353aeb35fb04019f4ecd2db5e1.jpg', 'Сервера и сетевая инженерия', 'Serwerler we tor engineerçiligi', 'Серверное и сетевое оборудование. Подбор, монтаж и обслуживание серверов.', 'Serwer we tor enjamlary. Serwerleri saýlamak, gurmak we hyzmat etmek.', '13.07.2022', ''),
(9, '60b5ee9db724fc7fb904a4a5f62c90e0.jpg', 'Ремонт и автоматизация производственных узлов', 'Önümçilik bölümlerini abatlamak we awtomatlaşdyrmak', 'Ремонт электроники промышленного оборудования в Ашгабаде', 'Aşgabatda senagat enjamlarynyň elektronikasyny bejermek', '13.07.2022', '');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_ru` text NOT NULL,
  `category_tm` text NOT NULL,
  `category_slug` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_ru`, `category_tm`, `category_slug`, `created_at`, `updated_at`) VALUES
(12, 'CPU ru', 'CPU tm', 'CPU_tm', '13.07.2022', ''),
(13, 'RAM ru', 'RAM tm', 'RAM_tm', '13.07.2022', '');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `comment_text` text NOT NULL,
  `commenter_mail` text NOT NULL,
  `post_id` text NOT NULL,
  `status` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `firstname`, `lastname`, `comment_text`, `commenter_mail`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Rahat', 'Gurbangulyev', 'Salam', 'rahatgurbangulyev@gmail.com', '139', 'approved', '13.07.2022', '7/14/2022 4:32:56 PM'),
(12, 'Rahat', 'Gurbangulyev', 'privet', 'rahatgurbangulyev@gmail.com', '142', 'pending', '13.07.2022', ''),
(13, 'Geldimyrat', 'Gurbangulyyew', 'kommentriya test:\noran govy post eken', 'gurbanguliyewgem@gmail.com', '139', 'rejected', '7/14/2022', '7/30/2022 3:12:09 AM'),
(14, 'Geldimyrat', 'Gurbangulyyew', 'Test Comment ', 'genagurbanguliyev@gmail.com', '143', 'approved', '8/13/2022', '8/13/2022 3:23:09 PM'),
(15, 'Geldimyrat', 'Gurbangulyyew', 'test 2', 'genagurbanguliyev@gmail.com', '143', 'approved', '8/13/2022', '8/13/2022 5:44:00 PM');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `title_ru` text NOT NULL,
  `title_tm` text NOT NULL,
  `excerpt_ru` text NOT NULL,
  `excerpt_tm` text NOT NULL,
  `description_ru` text NOT NULL,
  `description_tm` text NOT NULL,
  `post_category` text NOT NULL,
  `view_count` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `post_img`, `title_ru`, `title_tm`, `excerpt_ru`, `excerpt_tm`, `description_ru`, `description_tm`, `post_category`, `view_count`, `created_at`, `updated_at`) VALUES
(139, '3070aadd1e1139ce91cafe13963fe5cb.jpg', 'Что делать с медленным компьютером', 'Haýal kompýuter bilen näme etmeli', 'Типичный случай ремонта медленного компьютера. Как сделать компьютер быстрым', 'Haýal kompýuteriň abatlanylmagynyň adaty ýagdaýy. Kompýuteri nädip çalt etmeli', 'В нашу мастерскую COREX принесли очередной ноутбук с жалобой «Медленно работает». Такие ноутбуки и ПК приходят часто, поэтому мы написали статью, которая решает эту проблему. В этой статье я хочу помочь вам самостоятельно выявить причину проблемы и ознакомиться с решением.\n\nЯ расскажу о типовом случае ремонта медленно работающего компьютера на примере истории нашего клиента.\n\nНаш клиент Павел сидел за своим ноутбуком и работал с документами. Он уже и раньше замечал, что документы долго открываются, браузер медленно работает и в целом ноутбук долго загружается. С каждой неделей ноутбук работал всё медленнее, под конец загружался уже по 10 минут. Павел понял, что не может больше это терпеть!', 'Başga bir noutbuk “Haýal” şikaýaty bilen COREX ussahanamyza getirildi. Şeýle noutbuklar we kompýuterler köplenç gelýär, şonuň üçin bu meseläni çözýän makala ýazdyk. Bu makalada meseläniň sebäbini özüňiz kesgitlemäge we çözgüt bilen tanyşmaga kömek etmek isleýärin.\n\nMüşderimiziň hekaýasynyň mysalyny ulanyp, haýal kompýuteriň abatlanylmagynyň adaty ýagdaýy barada gürleşerin.\n\nMüşderimiz Pawel noutbukda otyrdy we resminamalar bilen işleýärdi. Resminamalaryň açylmagyna köp wagt gerekdigini, brauzeriň haýaldygyny we umuman noutbukyň ýüklenmegine köp wagt gerekdigini öňem görüpdi. Her hepde bilen noutbuk has haýal işledi we ahyrynda 10 minut ýükledi. Pawlus indi alyp bilmejekdigine düşündi!', 'CPU_tm', '23', '13.07.2022', ''),
(140, 'd13e327a2c77b8f15cdb799d213e74b3.jpg', 'Инструкция: как оживить компьютер за 5 минут', 'Görkezmeler: kompýuteri 5 minutda nädip janlandyrmaly', 'Лёгкая инструкция на случай, если не включается компьютер или ноутбук', 'Kompýuteriňiz ýa-da noutbukyňyz açylmasa aňsat görkezmeler', 'Что делать, если ноутбук не включаетсяНоутбук может не включаться и не реагировать на кнопку включения из-за внутренних неисправностей, неисправности зарядного устройства или сломанного разъёма питания.Проверьте индикатор питанияЕсли индикатор питания на ноутбуке загорается, то это означает, что кабель питания и зарядное устройство работают нормально, но ноутбук не загружается из-за неработоспособности других компонентов. В этом случае перейдите к сбросу настроек.', 'Noutbuk açylmasa näme etmeliNoutbuk içerki näsazlyklar, näsaz zarýad beriji ýa-da tok birikdirijisiniň döwülmegi sebäpli açylmaz we güýç düwmesine jogap bermezligi mümkin.Kuwwat görkezijisini barlaňNoutbukdaky tok çyrasy ýakylsa, tok kabeliniň we zarýad berijiniň kadaly işleýändigini aňladýar, ýöne beýleki komponentler işlemeýändigi sebäpli noutbuk açylmaýar. Bu ýagdaýda zawody täzeden düzmäge geçiň.', 'RAM_tm', '0', '13.07.2022', '13.07.2022 19:18:01'),
(141, 'f70765a9e7f1a53d049b6b7cd1ffd0c1.jpg', 'Скальпирование процессора', 'Prosessor skalping', 'i7-8700K сносит крышу!', 'i7-8700K üçegi urýar!', 'ВведениеНе рекомендую скальпировать процессор в домашних условиях, последствия ошибок необратимы. Но если вы всё же надумали, то в конце статьи будет инструкция, как скальпировать процессор. Надеюсь, этим мне удастся спасти хотя бы несколько штук =)Обратитесь к нам в Мастерскую COREX, чтобы скальпировать процессор с гарантией. Скальпируем процессоры в г. Иваново с марта 2018 года (тык, тык, тык, тыц, тыц). Работаем с доставкой по РФ.Вся информация по скальпированию в статье актуальна для процессоров Intel Core до 10 поколения.СодержаниеКогда речь идёт про разгон под системой водяного охлаждения или бесшумный компьютер, в разговоре всё чаще всплывает слово скальпирование. Чтобы вы понимали о чём идёт речь, в этой этой статье я отвечу на три главных вопроса:1. Что такое скальпирование2. Зачем скальпировать процессор3. Какой метод скальпирования лучше выбратьТакже познакомимся с опытом скальпирования популярных IT-изданий.', 'GirişProsessory öýde ulaltmagy maslahat beremok, ýalňyşlyklaryň netijelerini yzyna gaýtaryp bolmaýar. Stillöne şonda-da karar berseňiz, makalanyň soňunda prosessoryň kellesini nädip derlemelidigi barada görkezmeler bolar. Iň bolmanda birnäçe bölegi tygşytlar diýip umyt edýärin =)Prosessoryňyzy kepillik bilen derlemek üçin COREX ussahanasynda bize ýüz tutuň. 2018-nji ýylyň mart aýyndan bäri Iwanowoda prosessorlary köpeldýäris (poke, poke, poke, poke, poke). Russiýa Federasiýasynyň üsti bilen eltip bermek bilen işleýäris.Makaladaky daralmak baradaky ähli maglumatlar 10-njy nesile çenli Intel Core prosessorlary üçin degişlidir.MazmunySuw bilen sowadylan ulgamyň ýa-da sessiz kompýuteriň aşagynda aşa köp işlemek barada aýdylanda, gürlemekde kelläme sözi barha köpelýär. Nämäniň howp astyndadygyna düşünmek üçin bu makalada üç sany esasy soraga jogap bererin:1. Derisi näme2. Näme üçin prosessoryň kellesini kelläň3. Haýsy daramak usulyny saýlamak has gowudyrŞeýle hem meşhur IT neşirlerini köpeltmek tejribesi bilen tanyşarys.', 'CPU_tm', '0', '13.07.2022', '13.07.2022 19:18:01'),
(142, '7911a0683eabc0b1d0fcac693c9f9c40.jpg', 'Чистка компьютера от пыли', 'Kompýuteriňizi tozandan arassalamak', 'Разбираемся, что такое термопаста, какая термопаста лучше, зачем её менять и как наносить', 'Malylylyk pastasynyň nämedigini, haýsy termiki pastanyň has gowudygyny, näme üçin üýtgetmelidigini we nädip ulanmalydygyna düşünýäris', 'Пара вступительных слов о чистке ПК\nКогда я в очередной раз согласовывал с клиентом чистку от пыли, я понял, что у нас нет универсальной исчерпывающей информации о том, зачем нужна чистка компьютера от пыли и как сильно может отличаться результат, в зависимости от опыта исполнителя и расходных материалов. Эта статья универсальный ответ:\n\nдля тех, кто не знает зачем чистить компьютер или ноутбук от пыли;\nдля тех, кто хочет убедиться, что до сих пор правильно обслуживает свою технику самостоятельно;\nдля владельцев игровых ноутбуков и ноутбуков премиум-сегмента;\nдля тех, кто ценит тишину.\n\nНа пути к завоеванию каждого градуса и децибела при чистке компьютера или ноутбука я выделяю два основных этапа.\nПервый этап — чистка компьютера от пыли\nПыль без остановки накапливается внутри любого компьютера или ноутбука с активным воздушным охлаждением. Корпус ПК за 5 часов работы пропускает через себя ~ 1 500 кубометров воздуха, ~ 50 мг пыли и мелких частиц, за 100 дней ~ 50 грамм, а при интенсивной работе до 100 грамм. В течение года в компьютере может накопиться до 300 грамм пыли.', 'Kompýuter arassalamak barada birnäçe söz\nMüşderi bilen tozany arassalamagy ýene bir gezek utgaşdyranymda, ýerine ýetirijiniň tejribesine we sarp ediş materiallaryna baglylykda kompýuteriň tozandan arassalanmagynyň näme üçin zerurdygy we netijäniň nä derejede tapawutlanyp biljekdigi barada ähliumumy giňişleýin maglumatyň ýokdugyna düşündim. Bu makala ähliumumy jogap:\n\nkompýuteriň ýa-da noutbukyň tozandan näme üçin arassalanmagyny bilmeýänler üçin;\nenjamlaryna henizem özbaşdak hyzmat edýändigine göz ýetirmek isleýänler üçin;\noýun noutbuklarynyň we premium noutbuklaryň eýeleri üçin;\ndymmagy gowy görýänler üçin.\n\nKompýuter ýa-da noutbuk arassalananda her derejäni we desibeli ýeňip geçmegiň ýolunda iki esasy basgançagy tapawutlandyrýaryn.\nBirinji ädim, kompýuteriň tozanyndan arassalanmagydyr.\nToz, işjeň howa sowadyşy bilen islendik kompýuteriň ýa-da noutbukyň içinde üznüksiz ýygnanýar. Kompýuter korpusy 5 sagat işlemek üçin 00 1500 kub metr howa, mg 50 mg tozan we ownuk bölejikler, 100 gün ~ 50 gram we 100 grama çenli intensiw işlemek bilen geçýär. Duringylyň dowamynda kompýuterde 300 grama çenli tozan toplanyp biler.', 'RAM_tm', '17', '13.07.2022', ''),
(143, '48c26d834ba3e0947e3c399fe5e46c8e.jpg', 'Жидкий металл убивает компьютер | COREX', 'Suwuk metal kompýuteri öldürýär | KOREX', 'Жидкий металл убивает компьютер Если не следовать рекомендациям', 'Suwuk metal kompýuterleri öldürýär Eger teklipleri ýerine ýetirmeseňiz', 'Подробная памятка для тех, кто решил воспользоваться жидким металлом самостоятельно.\nОбщие рекомендации:\nне наносите и не допускайте попадания жидкого металла на алюминий;\nне рекомендуем наносить жидкий металл на лицевую сторону крышки процессора — он сотрёт гравировку на ней;\nизолируйте близлежащие элементы и контакты, жидкий металл проводит ток;\nследите, чтобы изоляционный слой не мешал прижиму радиатора;\nперед нанесением жидкого металла тщательно обезжирьте поверхности;\nнаносите жидкий металл не только на кристалл, но и на подошву радиатора (если это скальпирование — на внутреннюю сторону теплораспределительной крышки).\nНаносите жидкий металл средним по толщине слоем с помощью тупфера, тщательно втирая металл в наносимую поверхность.\nЕсли металл выдавился слишком большой порцией, соберите излишки в центре поверхности, на которую наносите жидкий металл и втяните излишки обратно в шприц.\nОсобенности нанесения герметика при скальпировании:\nвыбирайте термостойкий герметик;\nне наносите толстый слой герметика;\nне наносите герметик по всему периметру крышки — под действием высокой температуры под герметичной крышкой будет создаваться давление.\nБудьте аккуратны, не допускайте критических ошибок. Повреждения необратимы.', 'Suwuk metaldan özbaşdak peýdalanmak kararyna gelenler üçin jikme-jik ýatlama.\nUmumy maslahatlar:\nsuwuk metalyň alýumin bilen täsirleşmegine ýol bermäň;\nsuwuk metallary prosessoryň gapagynyň öň tarapyna ulanmagy maslahat bermeýäris - üstündäki nagyşlary pozar;\nýakyn elementleri we kontaktlary izolirlemek, suwuk metal tok geçirýär;\nizolýasiýa gatlagynyň radiator gysgyjyna päsgel bermeýändigine göz ýetiriň;\nsuwuk metal ulanmazdan ozal ýüzleri düýpli peseltmek;\nsuwuk metal diňe bir kristala däl, eýsem radiatoryň düýbüne hem çalyň (eger bu daralýan bolsa, ýylylyk paýlaýjy gapagyň içine).\nSuwuk metal, orta galyňlyk gatlagy bilen çalgy ulanyp, ulanyljak metaly seresaplylyk bilen sürtüň.\nEger aşa köp metal gysylsa, artykmaçlygy suwuk metal ulanýan ýeriň ortasyna ýygnaň we artykmaç bölegini şprisiň içine çekiň.\nDüzülende möhürleýji ulanmagyň aýratynlyklary:\nýylylyga çydamly mastik saýlaň;\ndykyzlandyryjy galyň gatlak ulanmaň;\nörtügiň ähli perimetri boýunça möhürleýji ulanmaň - möhürlenen örtügiň aşagynda ýokary temperatura basyşy dörediler.\nSeresap boluň, möhüm ýalňyşlyklar etmäň. Zyýan öwezini dolup bolmaýar.', 'CPU_tm', '11', '13.07.2022', '');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_pic` text NOT NULL,
  `service_name_ru` text NOT NULL,
  `service_name_tm` text NOT NULL,
  `service_excerpt_ru` text NOT NULL,
  `service_excerpt_tm` text NOT NULL,
  `service_description_ru` text NOT NULL,
  `service_description_tm` text NOT NULL,
  `view_count` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `service_pic`, `service_name_ru`, `service_name_tm`, `service_excerpt_ru`, `service_excerpt_tm`, `service_description_ru`, `service_description_tm`, `view_count`, `created_at`, `updated_at`) VALUES
(8, '18e677c00f4fb4f636460f4dde02e338.jpg', 'Ремонт и автоматизация производственных узлов', 'Önümçilik bölümlerini abatlamak we awtomatlaşdyrmak', 'Ремонт электроники промышленного оборудования в Ашгабаде', 'Aşgabatda senagat enjamlarynyň elektronikasyny bejermek', 'Техническое обслуживание и ремонт систем управления\nСвоевременная профилактика и обслуживание, а также срочный оперативный ремонт блоков автоматики, позволят предотвратить выход из строя систем управления, остановку оборудования, избежать убытков и недовольств конечных потребителей\n\nМы ваша страховка в стабильности работы систем управления:\n- роботов и станков с ЧПУ;\n- производственной линии;\n- теплового общедомового или производственного узла;\n- систем кондиционирования и освещения.\nМодернизация промышленных станков\nМысль многих руководителей предприятий заключается в том, чтобы максимально использовать действующие машины (станки), прежде чем начинать инвестировать в новые технологии. Проблема, хотя они все еще могут работать, заключается в том, что оборудование или системы управления часто не соответствуют новым технологическим стандартам. Запасные части могут быть устаревшими и недоступными, производители оригинального оборудования (ОЕМ) могут выйти из бизнеса или снять машины и оборудование с производства, а операционные системы могут быть устаревшими.\n\nАвтоматизация технологических процессов производства\nВ производстве время - это действительно деньги. Каждая секунда считается. Каждый шаг подсчитывается. Каждая единица рассчитывается. Эффективность и производительность - это ключи к максимальной прибыльности. К сожалению, многие производители тратят много времени и денег на использование неэффективных систем и устаревших технологий вместо использования последних достижений в области управления технологическими процессами и автоматизации.\n\nПредоставляя гибкие, полностью интегрированные решения по передовой технологии, Global Process Automation (GPA) позволяет нашим клиентам:\n1) Устранить разрыв между управлением процессом и информационными системами;\n2) Получить видимость и определите возможности оптимизации процесса;\n3) Достичь максимально возможных уровней автоматизации, контроля и производительности.', 'Dolandyryş ulgamlaryna hyzmat etmek we abatlamak\nÖňüni alyş tehniki hyzmaty we tehniki hyzmaty, şeýle hem awtomatlaşdyryş bölümlerini gyssagly abatlamak, dolandyryş ulgamlarynyň näsazlygynyň, enjamlaryň ýapylmagynyň öňüni alar, ahyrky ulanyjylaryň ýitgilerinden we nägileliginden gaça durar.\n\nDolandyryş ulgamlarynyň durnuklylygynda siziň ätiýaçlandyryşyňyz:\n- robotlar we CNC maşynlary;\n- önümçilik liniýasy;\n- termiki umumy bina ýa-da önümçilik bölümi;\n- kondisioner we yşyklandyryş ulgamlary.\nSenagat maşynlaryny döwrebaplaşdyrmak\nÖsümlik dolandyryjylarynyň köpüsiniň pikiri, täze tehnologiýalara maýa goýmazdan ozal bar bolan maşynlardan (maşynlardan) has köp peýdalanmak. Mesele, henizem işlemegi mümkin, enjamlaryň ýa-da dolandyryş ulgamlarynyň köplenç täze tehnologiýa standartlaryna laýyk gelmezligi. Zapas şaýlary köne we elýeterli däl bolup biler, asyl enjam öndürijiler (OEM) işden çykyp bilerler ýa-da maşynlary we enjamlary pensiýa çykaryp bilerler, operasiýa ulgamlary köne bolup biler.\n\nÖnümçiligiň tehnologiki proseslerini awtomatlaşdyrmak\nÖnümçilikde wagt hakykatdanam pul. Her sekunt hasaplanýar. Her ädim möhümdir. Her bölüm hasaplanýar. Netijelilik we öndürijilik iň ýokary girdejiligiň açarydyr. Gynansagam, köp öndürijiler prosese gözegçilik we awtomatlaşdyryşda soňky gazananlary ulanmagyň ýerine netijesiz ulgamlara we köne tehnologiýalara köp wagt we pul sarp edýärler.\n\nÇeýe, doly integrirlenen, iň täze tehnologiýa çözgütleri bilen, Global Prosess Automation (GPA) müşderilerimize:\n1) prosese gözegçilik we maglumat ulgamlarynyň arasyndaky boşlugy aradan aýyrmak;\n2) görnükliligi gazanmak we prosesi optimizasiýa mümkinçiliklerini kesgitlemek;\n3) Awtomatlaşdyrmagyň, gözegçilik we öndürijiligiň iň ýokary derejelerine ýetmek.', '17', '13.07.2022', ''),
(9, '895984eec63f7488cb4b70f1243dcfd9.jpg', 'Ремонт принтеров и оргтехники', 'Printerleri we ofis enjamlaryny abatlamak', 'Быстрый и качественный ремонт принтеров, шредеров, 3д притеров и ламинаторов в Ашгабаде', 'Aşgabatda printerleri, döwüjileri, 3D printerleri we laminatorlary çalt we ýokary hilli bejermek', 'Струйные и лазерные, домашние и офисные - обслуживаем оргтехнику качественно и с гарантией. Мы можем починить оборудование следующих марок: Brother, Buro, Canon, Epson, Fellowes, HP, Kyocera, Panasonic, Ricoh, Samsung, Xerox и других производителей. Ремонтируем в нашем сервисе стационарно или на выезде у заказчика. Но учтите: не всякий ремонт можно выполнить на дому или в офисе, сложные случаи требуют продолжительного ремонта. Также и со струйными принтерами: - восстановление печатающей головки или -помпы прокачки чернил может происходить в несколько этапов и занимать несколько дней.  Устраним любые неисправности Вашей оргтехники: Принтер не захватывает бумагу, берёт по несколько листов, заминает страницы Печатает с полосами, просветами, искажениями. Треск, хруст, шелест, щелчки при печати. Протекли чернила внутри принтера, просыпался порошок из картриджа. Промывка, восстановление печатающей головки после перерыва в печати. Восстановление помпы принтера, насоса прокачки чернил, промывка чернильных каналов. ЕСЛИ ВАША ОРГТЕХНИКА НУЖДАЕТСЯ В РЕМОНТЕ - МЫ ВОССТАНОВИМ ЕЁ РАБОТОСПОСОБНОСТЬ.', 'Inkjet we lazer, öý we ofis - ýokary hilli we kepillik bilen ofis enjamlaryna hyzmat edýäris. Aşakdaky markalaryň enjamlaryny bejerip bileris: Dogan, Buro, Canon, Epson, Fellowes, HP, Kyocera, Panasonic, Ricoh, Samsung, Xerox we beýleki öndürijiler. Hyzmat stasionar ýa-da müşderiniň sahypasynda abatlaýarys. Emma ýadyňyzdan çykarmaň: her abatlaýyş öýde ýa-da ofisde edilip bilinmez, çylşyrymly ýagdaýlar uzyn abatlamagy talap edýär. Şeýle hem inkjet printerleri bilen: - çap kellesini abatlamak ýa-da - syýa nasos nasoslary birnäçe tapgyrda bolup biler we birnäçe gün dowam edip biler.  Ofis enjamlaryňyzyň näsazlyklaryny düzederis: Printer kagyz almaýar, birnäçe sahypany alýar, sahypalary gysýar Zolaklar, boşluklar, ýoýulmalar bilen çap edilýär. Çap edilende döwmek, döwmek, çişirmek, basmak. Printeriň içine syýa syzdy, kartrijden poroşok oýandy. Çap etmekde arakesmeden soň çap kellesini ýuwmak, dikeltmek. Printer nasosyny, syýa nasosyny dikeltmek, syýa kanallaryny ýuwmak. EGER EDIP BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLAN BOLSA .YZ.', '1', '13.07.2022', '13.07.2022 19:56:25'),
(10, '85075f353aeb35fb04019f4ecd2db5e1.jpg', 'Ремонт и установка систем видеонаблюдения', 'Wideo gözegçilik ulgamlaryny abatlamak we oturtmak', 'Ремонт и установка систем видеонаблюдения в Ашгабаде', 'Aşgabatda wideo gözegçilik ulgamlaryny abatlamak we oturtmak', 'Обслуживаем все современные системы видеонаблюдения: аналоговые AHD и цифровые IP. Работаем с оборудованием Beward, BestDVR, CTV, Dahua, Falcon Eye, Hikvision, Hiwatch, Macroscop, Microdigital, Optimus, Proto-X, RVi, Tantos, Trassir и другими марками. Выезд на объект для монтажа оборудования выполняем в максимально быстрое время, всё необходимое у нас в наличии. Сервис и наладка уже смонтированных систем видеоконтроля также проводится в сжатые сроки. На все оказанные услуги мы выдаём документы и гарантию.\n\nОбслуживание системы видеонаблюдения:\nРегистратор не включается, видеозапись не работает.\nНет сигнала с камеры наблюдения, заменить камеру на новую.\nУстановить видеонаблюдение недорого, повесить камеру.\nПерестала идти запись видео, нет звука с камер, нет видео.\nВыдаёт ошибку записи, диск переполнен, нужно отформатировать.\nЗабыли пароль от регистратора, не могу зайти в настройки.\nДОСТУПНЫЕ ЦЕНЫ И ВЫСОКОЕ КАЧЕСТВО - ВЫ ТОЧНО БУДЕТЕ ДОВОЛЬНЫ, ВЫБРАВ НАШ СЕРВИС.\nВсе работы мы проводим в сжатые сроки, официальная гарантия на проведённые работы.', 'Modernhli häzirki zaman wideo gözegçilik ulgamlaryna hyzmat edýäris: analog AHD we sanly IP. Beward, BestDVR, CTV, Dahua, Falcon Eye, Hikvision, Hiwatch, Makroskop, Microdigital, Optimus, Proto-X, RVi, Tantos, Trassir we beýleki markalaryň enjamlary bilen işleýäris. Enjamlary oturtmak üçin desga gitmek mümkin boldugyça çalt amala aşyrylýar, bizde zerur zatlaryň hemmesi bar. Öň gurlan wideo gözegçilik ulgamlaryna hyzmat we sazlamak hem gysga wagtyň içinde amala aşyrylýar. Görkezilen ähli hyzmatlar üçin resminamalar we kepillik berýäris.\n\nWideo gözegçilik ulgamynyň hyzmaty:\nDiktofon açylmaýar, wideo ýazgy işlemeýär.\nGözegçilik kamerasyndan hiç hili signal ýok, kamerany täzesi bilen çalşyň.\nWideo gözegçiligini arzan guruň, kamera asyň.\nWideo ýazgysy saklandy, kameralardan ses ýok, wideo ýok.\nWriteazmakda ýalňyşlyk berýär, disk doly, ony formatlamaly.\nHasaba alyjydan paroly ýatdan çykardym, sazlamalara girip bilemok.\nGYSGAÇA BAHALAR WE I HIGH GOWY SYITYASAT - HYZMATYMYZY SAYLAMAK ÜÇIN SÖZLÜK BOLAR.\nWorkhli işleri gysga wagtyň içinde ýerine ýetirýäris, ýerine ýetirilen işiň resmi kepilligi.', '2', '13.07.2022', ''),
(11, '60b5ee9db724fc7fb904a4a5f62c90e0.jpg', 'Сервера и сетевая инженерия', 'Serwerler we tor in engineerçiligi', 'Серверное и сетевое оборудование. Подбор, монтаж и обслуживание серверов', 'Serwer we tor enjamlary. Serwerleri saýlamak, gurmak we hyzmat etmek', 'Подбираете серверы или устройства для создания вычислительной сети компании? Намерены заменить устаревшее оборудование, обеспечивающее обмен данными в компьютерной сети?Наша компания поможет подобрать, доставить, внедрить, а также займётся обслуживанием серверов и сетевого оборудования вашей организации.\n\nВысоконадежные серверы и грамотная организация ЛВС(или Локальная Вычислительная Сеть, LAN – Local Area Network) – залог бесперебойной работы ИТ-инфраструктуры бизнеса. Все успешно развивающиеся компании располагают качественными коммуникациями и отлаженными бизнес-процессами, которые в современных условиях неотделимы от ИТ-инфраструктуры. Поэтому подбор сервера, а также его монтаж и обслуживание должны выполнять компетентные специалисты, имеющие подобный опыт.\n\nСпециалисты компании «ukypcomputers» предлагают следующие услуги:\n- Подбор, поставка и монтаж серверов. Чтобы подобрать оборудование под задачи вашего бизнеса, мы учитываем следующие параметры: выделенный бюджет, производитель сервера, сложность и количество решаемых задач, технические характеристики, надежность, масштабируемость, срок эксплуатации. Следуя нашим рекомендациям, ваша организация в дальнейшем избежит рисков утери информации, простоев и потерю бесценного времени.\nПоставка и монтаж оборудования для ЛВС. Монтирование корпоративной ЛВС – один из важнейших этапов создания ИТ-инфраструктуры компании. Безошибочное исполнение проекта обеспечит бесперебойную работу сети в дальнейшем. Доверив выполнение проекта квалифицированным ИТ-экспертам, вы избавите организацию от сбоев и нарушений в работе ЛВС.\nОбслуживание и мониторинг работы сети. Правильное обслуживание серверов, ЛВС и их мониторинг оптимизирует трудозатраты, сократит финансовые расходы и обеспечит высокую отказоустойчивость.\nСТАБИЛЬНЫЕ СЕРВЕРЫ И СЕТЕВОЕ ОБОРУДОВАНИЕ – ГАРАНТИЯ УСПЕШНОГО РАЗВИТИЯ БИЗНЕСА! ДОВЕРЬТЕ ПОДБОР, УСТАНОВКУ, ОБСЛУЖИВАНИЕ СЕРВЕРОВ И ЛОКАЛЬНЫХ ВЫЧИСЛИТЕЛЬНЫХ СЕТЕЙ КОМПАНИИ «UKYPCOMPUTERS»!', 'Kompaniýanyň kompýuter toruny döretmek üçin serwerleri ýa-da enjamlary gözleýärsiňizmi? Kompýuter ulgamynda maglumat alyş-çalşyny üpjün edýän köne enjamlary çalyşmak isleýärsiňizmi? Kompaniýamyz guramaňyz üçin serwerleri we tor enjamlaryny saýlamaga, eltmäge, durmuşa geçirmäge we goldamaga kömek eder.\n\nYgtybarly serwerler we LAN-yň başarnykly guramasy (ýa-da Areaerli sebit tory, LAN - Areaerli sebit tory) işewürlik IT infrastrukturasynyň göwnejaý işlemeginiň açarydyr. Üstünlikli ösýän kompaniýalaryň hemmesinde häzirki zaman şertlerinde IT infrastrukturasy bilen aýrylmaz baglanyşykly ýokary hilli aragatnaşyk we tertipli iş prosesleri bar. Şonuň üçin serweri saýlamak, şeýle hem ony gurmak we tehniki hyzmat etmek şuňa meňzeş tejribeli hünärmenler tarapyndan amala aşyrylmalydyr.\n\nUkypcomputers hünärmenleri aşakdaky hyzmatlary hödürleýärler:\n- Serwerleri saýlamak, üpjün etmek we gurmak. Işiňiziň wezipeleri üçin enjamlary saýlamak üçin aşakdaky parametrleri göz öňünde tutýarys: bölünen býudjet, serwer öndürijisi, çözülmeli meseleleriň çylşyrymlylygy we sany, tehniki aýratynlyklar, ygtybarlylyk, göwrümlilik, hyzmat ömri. Tekliplerimize eýerip, guramaňyz geljekde maglumat ýitirmek, iş taşlamak we gymmatly wagt ýitirmek howpundan gaça durar.\nLAN üçin enjamlar bilen üpjün etmek we oturtmak. Korporatiw LAN gurmak, kompaniýanyň IT infrastrukturasyny döretmekde iň möhüm ädimlerden biridir. Taslamanyň ýalňyşsyz ýerine ýetirilmegi geljekde toruň üznüksiz işlemegini üpjün eder. Taslamanyň durmuşa geçirilmegini ökde IT hünärmenlerine tabşyrmak bilen, guramany LAN-daky şowsuzlyklardan we bökdençliklerden halas edersiňiz.\nTor hyzmaty we gözegçilik. Serwerlere, LAN-lara we olaryň gözegçiligine dogry hyzmat etmek zähmet çykdajylaryny optimallaşdyrýar, maliýe çykdajylaryny azaldýar we ýokary ýalňyşlyklara çydamlylygy üpjün edýär.\nDURMUŞ HYZMATLAR WE TERJIME EDIPLERI ÜÇIN ÜPJÜNÇILIK ÖSÜŞINIAR Kepilligi! UKYPCOMPUTERLER ÜÇIN HYZMATÇYLARY AND WE OCERLI TORLARYNY SAYLAMAK, GURNAMAK, GÖRNÜŞ', '17', '13.07.2022', ''),
(12, '85dae9baeaafe29acaf66801408944f5.jpg', 'Ремонт персональных компьютеров и ноутбуков', 'Şahsy kompýuterleri we noutbuklary bejermek', 'Быстрый и качественный ремонт компьютеров, ремонт ноутбуков, любая компьютерная помощь', 'Çalt we ýokary hilli kompýuter abatlamak, noutbuk abatlamak, islendik kompýuter kömek edýär', 'Если у вас сломался компьютер, возникли проблемы с ноутбуком, не удалось правильно собрать компьютер самостоятельно, ноутбук забился пылью и сильно шумит, полетела видеокарта в компьютере, слетела прошивка, с компьютером происходит \"непонятно что\" или возникли любые другие проблемы с компьютерной техникой, то нужно позвонить в \"ukypcomputer\" - специалисты нашего сервиса помогут в любой ситуации. Обратиться в наши компьютерные мастерские можно в любое время с 9 до 21 часов, семь дней в неделю. Специалист сервисного центра обязательно поинтересуется, какая услуга вам требуется и проконсультирует абсолютно бесплатно.\n\nтребуется ли вам ремонт компьютера;\nвирус не даёт войти в систему;\nнеобходимо установить драйверы к новому оборудованию\n- наши специалисты всегда помогут. Услуги нашего компьютерного сервиса - это всегда оперативно и по доступным ценам - наша компьютерная помощь всегда рядом.\n\nКоротко о других услугах сервисного центра:\n- Установка операционной системы, установка и настройка приложений, установка драйверов, очистка от вирусов.\n- Замена экранов ноутбуков.\n- Ремонт материнских плат, видеокарт и других комплектующих (устранение мех.повреждений, пайка элементов печатной платы), подбор и замена аккумуляторов ИБП.', 'Kompýuteriňiz döwülse, noutbukyňyzda näsazlyklar bar bolsa, kompýuteriňizi dogry ýygnap bilmersiňiz, noutbukyňyz tozan bilen örtülendir we köp ses çykarýar, kompýuterdäki wideo karta uçdy, programma üpjünçiligi ýykyldy, Kompýuterde näme bolýandygy \"belli däl\" ýa-da kompýuter enjamlary bilen baglanyşykly başga bir mesele bar bolsa, \"ukcomputer\" diýip atlandyrmaly bolarsyňyz - hyzmat hünärmenlerimiz islendik ýagdaýda kömek eder. Hepdäniň ýedi güni irden sagat 9-dan agşam 9-a çenli kompýuter ussahanalarymyz bilen habarlaşyp bilersiňiz. Hyzmat merkeziniň hünärmeni hökman haýsy hyzmatyň gerekdigini soraýar we size mugt maslahat berer.\n\nKompýuter bejergisi gerekmi?\nwirus ulgama girmäge mümkinçilik bermeýär;\ntäze enjamlar üçin draýwerleri gurmaly\n- hünärmenlerimiz elmydama kömek ederler. Kompýuter hyzmatymyzyň hyzmatlary elmydama çalt we elýeterli bahalarda - kompýuterimiziň kömegi elmydama bar.\n\nHyzmat merkeziniň beýleki hyzmatlary barada gysgaça:\n- Operasiýa ulgamyny gurmak, programmalary gurmak we düzmek, draýwerleri gurmak, wiruslardan arassalamak.\n- Noutbuk ekranlaryny çalyşmak.\n- Anakartlary, wideo kartalary we beýleki bölekleri bejermek (mehaniki zeperleri ýok etmek, çap edilen elektron tagta elementlerini lehimlemek), UPS batareýalaryny saýlamak we çalyşmak.', '19', '13.07.2022', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'genagurbanguliyev@gmail.com', '$2b$08$8NOJ5FlCLHPAlHb7RoLOzurJRFMeS.3G30btZnDmK.Njkdc6MJULq');

-- --------------------------------------------------------

--
-- Структура таблицы `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `homepage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `views`
--

INSERT INTO `views` (`id`, `homepage`) VALUES
(1, '153');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
