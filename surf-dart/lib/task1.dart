import 'mosk.dart';

void main(List<String> args) {

// создаем новый массив
List <AgriculturalMachinery> listMachines = []; 

// добавляем в новый массив технику после 2010г.  
mapAfter2010.forEach((key, terList) { 
  for (var terit in terList) {
    for (var machi in terit.machineries) {listMachines.add(machi); }
   }
});

// добавляем в новый массив технику до 2010г. 
mapBefore2010.forEach((key, terList) { 
  for (var terit in terList) {
    for (var machi in terit.machineries) {listMachines.add(machi); }
   }
});

//удаляем повторяющиеся элементы

listMachines = listMachines.toSet().toList();

// получаем массив всех возрастов техники 
List<int> allMachineAge = listMachines.map((e) => (DateTime.now().year - e.releaseDate.year)).toList();

// сумма всех возрастов техники
int allSumm = 0;



for (var e in allMachineAge) {
   allSumm += e;
   }


//сортируем по убыванию
allMachineAge.sort((a,b) => b.compareTo(a));

//массив 50 % сторой техники 
List <int> allHalfMachinAge = [];


for (int i = 0; i < allMachineAge.length/2; i++) {
  allHalfMachinAge.add(allMachineAge[i]); 
}

// сумама 50% возрастов старой стехники 
int halfSumm = 0;

for (var e in allHalfMachinAge) {
  halfSumm += e;
  
}


// вывод 
print("Срдений возраст всей техники: ${allSumm/allMachineAge.length}");
print("Срдений возраст 50% самой старой техники техники: ${halfSumm/allHalfMachinAge.length}");

}

