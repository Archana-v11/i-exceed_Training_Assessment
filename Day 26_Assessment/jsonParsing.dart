import 'dart:convert';

void main()
{
   final jsonData="""
  {
      "id":1,
      "name":"Archana V",
      "details":
      {
         "degree":"B.TECH",
         "dep":"IT"

      },

     "result":[
        {
           "sem":1,
           "cgp":8.3
        },
        {
           "sem":2,
           "cgp":8.5
        },
        {
           "sem":3,
           "cgp":8.6
        }
        
     ]
    
  }
  """;

  //print(jsonData.runtimeType);

  final decodedData=jsonDecode(jsonData);
  final student=Student.call(decodedData);

  print(student.name);
  print(student.id);

  //printing details --> ? for null aware that means student.details is not null, then access degree
  print(student.details?.degree);
  print(student.details?.dep);

  //print(student.result?[0].cgp);

  //loop through the results
  for(var i in student.result!)
  {
    print("Semester : ${i.sem}");
    print("CGP : ${i.cgp}");
  }


  String encodeData=jsonEncode(decodedData);
  print(encodeData);
  //print(decodedData.runtimeType);

  // print(decodedData['name']);
  // print(decodedData['result']);
  // print(decodedData['result'][0]);
}


class Student
{
    String? name;
    int? id;
    Details? details;
    List<Result>? result;


    Student({this.id,this.name,this.details,this.result});


    factory Student.call(Map<String,dynamic> data)
    {
      return Student(
        name:data['name'],
        id:data['id'],
        details:Details.call(data['details']),
        result:(data['result'] as List)
                 .map((e) => Result.call(e))
                 .toList(),

        
      );
    }

    
}

class Details
{
    String? degree,dep;
  
    Details({this.degree,this.dep});

    factory Details.call(Map<String,dynamic> data)
    {
      return Details(
        degree:data['degree'],
        dep:data['dep'],
      );
    }
}

class Result
{
    int? sem;
    double? cgp;
  
    Result({this.sem,this.cgp});

    factory Result.call(Map<String,dynamic> data)
    {
      return Result(
        sem:data['sem'],
        cgp:data['cgp'],
      );
    }
}