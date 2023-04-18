# Counter
Counter - это приложение-счётчик (Усложнённая задача версия). 

```
Важно! Данная версия (из бранча advanced-version) сдается на код-ревью.
```

## **Условия усложненной задачи**
Нужно доработать базовое приложение-счётчик, расширив его функциональность. 

## **Описание приложения**

В повседневной жизни нам часто приходится что-то считать — например, количество книг в домашней библиотеке. Чтобы случайно не сбиться и учесть каждую книгу, было бы удобно просто нажимать на кнопку. А если ошибся, то можно себя исправить.

Идея доработки базового приложения проста: в приложении должны быть яркие кнопки для увеличения или уменьшения счетчика, кнопка сброса счетчика и текстовое поле с журналом действий пользователя.

## **Функциональные требования**

Усовершенствуйте базовое приложение-счётчик, добавив несколько новых функций:
1. Создайте две кнопки:
  - с иконкой «+» — красного цвета,
  - с иконкой «-» — синего цвета.
```
Соответственно, при нажатии на плюс значение счётчика будет увеличиваться на 1, а при нажатии на минус — уменьшаться на 1. 
При этом значение счётчика не должно падать ниже нуля.
```

2. Создайте кнопку обнуления с подходящей иконкой, которая при нажатии обнуляет значение счётчика.
3. Создайте текстовое поле `UITextView`, в котором будет отражена история изменения значения счётчика следующего формата:
  - при старте приложения — «История изменений:»
  - при успешном нажатии на кнопку «+» или «-» — «[дата и время]: значение изменено на -1/+1»
  - при сбросе: — «[дата и время]: значение сброшено»
  - при попытке уменьшить значение счётчика ниже 0 — «[дата и время]: попытка уменьшить значение счётчика ниже 0»
```
Внимание! Текстовое поле должно скроллиться, но при этом оно заблокировано для редактирования пользователем.
```

## **Технические требования**

- Приложение запускается и не крашится;
- При старте приложение у лейбла показан текст «0», а текст в текстовом поле соответствует описанию пункта 3 условия задачи;
- При нажатии на кнопку «+» или «-» значение счётчика меняется на -1 (если не было равно 0) или +1. Значение счётчика обнуляется в тексте лейбла, а в текстовом поле добавляется строка (согласно пункту 3 условия задачи);
- При нажатии на кнопку обнуления значение счётчика обнуляется в тексте лейбла, а в текстовом поле добавляется строка (согласно пункту 3 условия задачи).
- Кнопки имеют соответствующие условиям задачи цвета и иконки;
- Текстовое поле скроллиться, но заблокировано для редактирования пользователем.

