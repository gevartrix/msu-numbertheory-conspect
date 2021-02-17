<div align="center">

[<img src="https://raw.githubusercontent.com/gevartrix/msu-numbertheory-conspect/master/.github/assets/mechmath_logo.svg?sanitize=true&raw=true" width="250" height="280"/>](https://math.msu.su/)

</div>

# Конспект лекций по Теории Чисел

Конспект курса лекций по Теории Чисел, прочитанного Олегом Николаевичем Германом осенью 2017 года на мехмате МГУ (седьмой семестр). Конспект свёрстан в системе подготовки документов ![LaTeXe](https://latex.codecogs.com/png.latex?\LaTeXe) двумя слушателями курса — Артемием Соколовым (нечётные лекции) и Артемием Геворковым (чётные лекции).

## Оглавление README

<details>
  <summary>Кликните сюда, чтобы развернуть</summary>

  - [Содержание курса](#course-summary)
  - [Бонусы нашего конспекта](#features)
  - [Структура документа](#structure)
  - [Сборка конспекта](#build)
    * [Через утилиту `latexmk`](#latexmk)
    * [Через `Makefile`](#makefile)
  - [Внесение своего вклада](#contributing)
    * [Контакты](#contacts)
  - [Лицензия](#license)
</details>

## Содержание курса <a name="course-summary"></a>

Конспект состоит из четырёх основных разделов, а также из разбора нескольких семинарских заданий по этим разделам. Сейчас вёрстка конспекта в процессе "рефакторинга", поэтому в этой ветке репозитория пока доступны не все разделы. Те, что уже полностью свёрстаны, помечены "галочкой":
- [x] Асимптотический закон распределения простых чисел
- [x] Теорема Дирихле о простых числах в арифметических прогрессиях
- [x] Диофантовы приближения
- [ ] Алгебраические и трансцендентые числа
- [ ] Разбор некоторых заданий с семинаров

Старая версия вёрстки всех разделов доступна [здесь](https://github.com/gevartrix/msu-numbertheory-conspect/tree/legacy).

## Бонусы нашего конспекта <a name="features"></a>
- Дополненные доказательства
- Разбор семинарских заданий
- Список рекомендуемой литературы для дальнейшего изучения по каждому разделу
- Графика (включая [логотип мехмата](img/mechmath.tikz)), созданная при помощи пакета [Ti*k*Z](https://github.com/pgf-tikz/pgf)
- Преамбула с подробными комментариями, которая может быть приспособлена под шаблон для подобных документов
- **Николай Германович!**

## Структура документа <a name="structure"></a>

<details>
  <summary>Кликните сюда, чтобы развернуть</summary>

    ├── img
    │   ├── figures
    │   │   ├── 4-1.tikz
    │   │   ├── 4-2.tikz
    │   │   ├── 5-1.tikz
    │   │   ├── 10-1.tikz
    │   │   └── 10-2.tikz
    │   ├── mechmath.tikz
    │   └── moschevitin.jpg
    ├── preamble
    │   ├── encoding.tex
    │   ├── graphics.tex
    │   ├── layout.tex
    │   └── maths.tex
    ├── sections
    │   ├── lectures
    │   │   ├── 01.tex
    │   │   ├── 02.tex
    │   │   ├── 03.tex
    │   │   ├── 04.tex
    │   │   ├── 05.tex
    │   │   ├── 06.tex
    │   │   ├── 07.tex
    │   │   ├── 08.tex
    │   │   ├── 09.tex
    │   │   ├── 10.tex
    │   │   ├── 11.tex
    │   │   └── 12.tex
    │   ├── 00titlepage.tex
    │   └── 01intro.tex
    ├── main.tex
    └── Makefile

</details>

- **[папка img](img/)**: вся графика и изображения
  * **[папка figures](img/figures)**: чертежи для лекций
- **[папка preamble](preamble/)**: файлы преамбулы документа, разбитые по соответствующим функциям (кодировка, дизайн страниц, математические окружения и команды, и т.д.); в файлах содержатся подробные комментарии
- **[папка sections](sections/)**: файлы с самой вёрсткой конспекта
  * **[папка lectures](sections/lectures)**: файлы вёрстки, разбитые по лекциям
- [main.tex](main.tex): мастер-файл конспекта, в который импортируется вся вёрстка

## Сборка конспекта <a name="build"></a>

> Окончательный .PDF-файл конспекта можно скачать в вкладке [Releases](https://github.com/gevartrix/msu-numbertheory-conspect/releases), но можно сгенерировать его и локально.

Первым делом убедитесь, что в вашей системе установлен ![LaTeX](https://latex.codecogs.com/png.latex?\LaTeX) ([TeX Live](http://www.tug.org/texlive/), [MiKTeX](https://miktex.org/)). Затем скачайте этот репозиторий — либо через браузер, либо через `git`:
```sh
git clone https://github.com/gevartrix/msu-numbertheory-conspect.git
```
и откройте файл `main.tex` в вашем ![TeX](https://latex.codecogs.com/png.latex?\TeX)-редакторе. При первой компиляции редактор должен будет сам подтянуть все зависимости.

Если хотите собрать документ вручную через командную строку, то это можно сделать как описано ниже.

### Через утилиту `latexmk` <a name="latexmk"></a>

Если в вашей системе ![LaTeX](https://latex.codecogs.com/png.latex?\LaTeX) доступна утилита [`latexmk`](https://mg.readthedocs.io/latexmk.html), то достаточно выполнить следующие команды:
```sh
latexmk -pdf main
latexmk -c  # удаление промежуточных файлов компиляции
```

### Через `Makefile` <a name="makefile"></a>

Если же этой утилиты нет, и у вас GNU/Linux, то можно собрать документ через [`Makefile`](Makefile):
```sh
make
make clean  # удаление промежуточных файлов компиляции
```

## Внесение своего вклада <a name="contributing"></a>

Если в самой свежей версии этого документа вы нашли какую-либо неточность или опечатку, вы хотите что-то дополнить или добавить, или если у вас есть предложения по улучшению качества самой вёрстки, — пожалуйста, откройте [issue](https://github.com/gevartrix/msu-numbertheory-conspect/issues) или сделайте pull request:

1. [Создайте fork репозитория.](https://github.com/gevartrix/msu-numbertheory-conspect/fork)
2. Создайте свою отдельную ветку: `git checkout -b feature/foo`.
3. Закоммитьте в неё свои изменения: `git commit -am 'Add foo feature'`.
4. Загрузите коммит: `git push origin feature/foo`.
5. Создайте новый pull request.

Любое участие и стремление улучшить наш конспект крайне приветствуются! Для удобства работы постарайтесь, чтобы код вашей вёрстки вписался по стилю в общий документ. Для этого рекомендуем ознакомиться с [этой подборкой](http://mirrors.ctan.org/info/l2tabu/english/l2tabuen.pdf) самых распространённых ошибок при вёрстке и их устранения.

### Контакты <a name="contacts"></a>

Если у вас остались вопросы, то с нами можно связаться здесь:

[![SokolovA](https://img.shields.io/badge/Артемий_Соколов-%40SokolovArtemy-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAEbklEQVQ4y62US2xUdRjFf%2F%2F%2FfUynnXaGKW15FHnVKm8SRCFB3ZhYRVQSISHKBhKjK2JiTIyuXJC40oUrY%2BJGTZSABomiC0kUFYEIFRWrQi1tmXb6mE7be%2BfOvf%2F7%2F1z0Ydh71t93vpPz5RxlUoujFSOB4dxQQGKFUs2AFRIr9%2FRVzdO%2FVZNVvqPsjqL31%2BYl3icNjh4dDAyNrsPzm%2FL4riZOhRbfwWUeAohAe9ZhrG6af6mYF27X0gPVRHZ6jsYquDxpGAjSJ7rz3om2jHqv2VOLuwtQCwpHA8NvExEXx6JnTg6Eb0%2FU7UpPK3Kewp3bI05hOrEIkHPV1aPduRePbStesAKhseQ8B63V3HRHk8t3o9HLx3unTlRju7KjQVPwFM68chHwNLRlNB0NmtlEtr%2FZO%2FXjlwNBj1aKxM4rjJKUjKv5ZijY2%2FPF8JmuvE%2Fe%2B29gAVqBo6CeCkOBoT3rkFgo14y8%2B%2FCy9bs6sv2rci66HCZcG69lX%2Fq%2B%2FEGrr2lxFbERxAoiggY0Qjk0XB6NGJpN2NORZU3Oo8lRiBX14Z%2FVjypROnc46zqcvRUe7avEhVVNLnVjAcHVEBnL9cmIa%2BMRSzzNqzuWcvrxTk49tpINBZ8%2FKnW6WjzOl2q7LowEewDci6Nh57nh4Lmcq0itRaMYDQ3DMwltjR777sqxv6uFA13Nd1jQOx6R1aAEYmO5Ol5%2FFjjvfnZz5sDgdPJAq68RC4OzCe1ZhyP3t3Ho7jwbij4ApUrITJKybmmOSpRyqxpT8B2SVCj6Dr3j9e0A7ve3wy6FwtOKG1N1jm1v5Y3d7YtKarHhymCVfKPHpuUtAFwZrzMwk7A%2B72OskPcUlZopzHnoaJOKYK2lkHG4NBJy%2FKcxfh2LCGoxlwerrCg0LJIB9FfrRIkFmXtcnFpEJAXQPaubfnQgmK6nFD3FlXLEa%2BdK7Pn4Jt%2FerLCxNcua1qY7%2FLtYqqERsIISYSwwrGh0RwD00c3Fk1taM1%2BVZhJiKyzJaDYub6CaCH8HQjBW4cyv5TsIf5%2BIaHQUqVhEhGpk6Mr75wF0aTZJugv%2Bu1YEY4XUWlIrNHmKn8s1zo7E7Ds1yJMn%2BxcJ%2ByYjChmNFZiqGVobHJ5Y1%2Fw%2BgDsaGnrWNn91qRRe%2BLp%2Feld3a5bEWFY0aM4N1zg9AJ3LGvm8b4pHT9xkdYsHVshqhSPC7Yk6h7YW3%2BlZ2zwAoH4ph6xo9vhhKOg8cmbgulEq197kYUWI5%2BPna%2FAcRX81JjLChmIGC%2FSVa%2BzszPV9un%2FNFoRkZbOHrqfCWJiitRp6ZH1%2Bj68YuTFVJ04FX4GrhNQKUWLpzHl0F3wmaoYbkxH3Lm24%2Bvru9gcLvpPUzHz0FoI%2FW7fE1vYe3lK8b%2B%2FalhNBnFIOEyZDgxXBpEJ5NqE0m5BxVPpQZ%2B6tV3a17xAYGw0NC621WLBKwXQ9pcV3hw9vzh3M%2BWr74ExyMDGy7XaQLHM1srUt2681l5%2Fqyn9shH8mohTf0TgK0vmWVSLC%2F4l%2FAXWxRtaDbtHIAAAAAElFTkSuQmCC)](https://t.me/SokolovArtemy) [![GevorkovA](https://img.shields.io/badge/Артемий_Геворков-%40arvego-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAEbklEQVQ4y62US2xUdRjFf%2F%2F%2FfUynnXaGKW15FHnVKm8SRCFB3ZhYRVQSISHKBhKjK2JiTIyuXJC40oUrY%2BJGTZSABomiC0kUFYEIFRWrQi1tmXb6mE7be%2BfOvf%2F7%2F1z0Ydh71t93vpPz5RxlUoujFSOB4dxQQGKFUs2AFRIr9%2FRVzdO%2FVZNVvqPsjqL31%2BYl3icNjh4dDAyNrsPzm%2FL4riZOhRbfwWUeAohAe9ZhrG6af6mYF27X0gPVRHZ6jsYquDxpGAjSJ7rz3om2jHqv2VOLuwtQCwpHA8NvExEXx6JnTg6Eb0%2FU7UpPK3Kewp3bI05hOrEIkHPV1aPduRePbStesAKhseQ8B63V3HRHk8t3o9HLx3unTlRju7KjQVPwFM68chHwNLRlNB0NmtlEtr%2FZO%2FXjlwNBj1aKxM4rjJKUjKv5ZijY2%2FPF8JmuvE%2Fe%2B29gAVqBo6CeCkOBoT3rkFgo14y8%2B%2FCy9bs6sv2rci66HCZcG69lX%2Fq%2B%2FEGrr2lxFbERxAoiggY0Qjk0XB6NGJpN2NORZU3Oo8lRiBX14Z%2FVjypROnc46zqcvRUe7avEhVVNLnVjAcHVEBnL9cmIa%2BMRSzzNqzuWcvrxTk49tpINBZ8%2FKnW6WjzOl2q7LowEewDci6Nh57nh4Lmcq0itRaMYDQ3DMwltjR777sqxv6uFA13Nd1jQOx6R1aAEYmO5Ol5%2FFjjvfnZz5sDgdPJAq68RC4OzCe1ZhyP3t3Ho7jwbij4ApUrITJKybmmOSpRyqxpT8B2SVCj6Dr3j9e0A7ve3wy6FwtOKG1N1jm1v5Y3d7YtKarHhymCVfKPHpuUtAFwZrzMwk7A%2B72OskPcUlZopzHnoaJOKYK2lkHG4NBJy%2FKcxfh2LCGoxlwerrCg0LJIB9FfrRIkFmXtcnFpEJAXQPaubfnQgmK6nFD3FlXLEa%2BdK7Pn4Jt%2FerLCxNcua1qY7%2FLtYqqERsIISYSwwrGh0RwD00c3Fk1taM1%2BVZhJiKyzJaDYub6CaCH8HQjBW4cyv5TsIf5%2BIaHQUqVhEhGpk6Mr75wF0aTZJugv%2Bu1YEY4XUWlIrNHmKn8s1zo7E7Ds1yJMn%2BxcJ%2ByYjChmNFZiqGVobHJ5Y1%2Fw%2BgDsaGnrWNn91qRRe%2BLp%2Feld3a5bEWFY0aM4N1zg9AJ3LGvm8b4pHT9xkdYsHVshqhSPC7Yk6h7YW3%2BlZ2zwAoH4ph6xo9vhhKOg8cmbgulEq197kYUWI5%2BPna%2FAcRX81JjLChmIGC%2FSVa%2BzszPV9un%2FNFoRkZbOHrqfCWJiitRp6ZH1%2Bj68YuTFVJ04FX4GrhNQKUWLpzHl0F3wmaoYbkxH3Lm24%2Bvru9gcLvpPUzHz0FoI%2FW7fE1vYe3lK8b%2B%2FalhNBnFIOEyZDgxXBpEJ5NqE0m5BxVPpQZ%2B6tV3a17xAYGw0NC621WLBKwXQ9pcV3hw9vzh3M%2BWr74ExyMDGy7XaQLHM1srUt2681l5%2Fqyn9shH8mohTf0TgK0vmWVSLC%2F4l%2FAXWxRtaDbtHIAAAAAElFTkSuQmCC)](https://t.me/arvego)

## Лицензия <a name="license"></a>

[MIT](LICENSE).
