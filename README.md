<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## О проекте LARAVEL-DEMO

Домашнее задание к уроку №1 курса GeekBrains "Laravel. Глубокое погружение".

## Домашнее задание

1. Настроить на локальной машине окружение для работы с фреймворком.

      Выполнено в нескольких вариантах:
      
        а) Локальная установка с помощью composer + mysql из OpenServer
        б) WSL2 + Docker (конфликтует с локально установленным VirtualBox, приходится переключать
                          режимы работы: для VirtualBox - bcdedit /set hypervisorlaunchtype off 
                                         для Docker - bcdedit /set hypervisorlaunchtype auto
                                         после изменения настроек требуется перезагрузка)
        в) Установка в локальной виртуальной машине Linux под Virtualbox
        
2. Ознакомиться с документацией

        Выполнено
        
3. Установить Laravel.

        Установлено, два варианта:
        
            а) composer create-project laravel/laravel example-app
            б) composer global require laravel/installer
               laravel new example-app
               
4. Реализовать несколько страниц с выводом какой-либо информации.

        Выполнено, проект laravel-demo. Реализован вывод базовой страницы (/), страницы с обзором
        последних публикаций (/about), вывода списка публикаций (/articles) отсортированных по дате
        публикации от новых к более старым, просмотра конкретной публикации по выбору ее со страницы
        /about или /articles. Возможен просмотр публикации по номеру, например: /articles/1
        Поддерживается режим редактирования уже созданных сообщений, например: /articles/1/edit
        и режим создания новых сообщений: /create
        В режиме создания новых сообщений выполняется базовая проверка заполненых полей. 
        Дамп базы данных приложен в файле: laravel-demo.sql

## Использованное окружение

Laravel 8.27.0, PHP 7.4.5, MySQL 8.0, PhpStorm 2020.3.2 на платформе Windows 10 Pro x64.

### Выполнено

- Алексей Богданов, 11 февраля 2021 года

## Todo

Переделать используемый HTML (blade) шаблон с использованием Bulma, как это уже реализовано для
форм создания и редактирования публикаций..


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
