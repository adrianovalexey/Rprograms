require(stringr) ## импортируем библиотеку stringr в нашу программу
palin <-function(x) {

##x <- character()
p <- tolower(x) ## сделаем все с маленькой буквы
p1<-gsub(" ", "", p) ##удалим все пробелы в строке p
chars <- nchar(p1) ## посчитаем количество символов в строке


### Реализуем реверс для фразы p

k<-str_split(p1, '', n = Inf)[[1]] ##Разделим строку посимвольно и представим ее как одномерный список [[1]]
lenk = length(k) ##посчитаем длину списка к
kfin <- k[lenk:2] ## сделаем новый лист реверсивный для k без последнего элемента

kstart <- k[2:lenk] ## начальный лист без первого пустого элемента
len<-length(kfin) ##длина проверочного списка
t <-0 ##Проверочный счетчик

### Проверим что реверс равен аверсу
	for (i in 1:len) {
    #print(kstart[i])
  
	if(kstart[i]==kfin[i])
  t<-t+1


	}
	## Завершим функцию проверкой счетчика и длины строки без пробелов  
	
if(t==chars)
  print('И правда, это палиндром') 
if(t!=chars)
  print("Это не палиндром")
	

}


