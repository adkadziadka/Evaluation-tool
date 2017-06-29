Teacher.delete_all
Student.delete_all
Batch.delete_all
Performance.delete_all

teacher1 = Teacher.create!( {email: "teacher@teacher.com", password:"123456"} )

batch1 = Batch.create!( number: 1, start_date: DateTime.parse("2017-05-11"), end_date: DateTime.parse("2017-07-11") )
batch2 = Batch.create!( number: 2, start_date: DateTime.parse("2017-07-11"), end_date: DateTime.parse("2017-09-11") )
batch3 = Batch.create!( number: 3, start_date: DateTime.parse("2017-09-11"), end_date: DateTime.parse("2017-11-11") )
batch4 = Batch.create!( number: 4, start_date: DateTime.parse("2017-11-11"), end_date: DateTime.parse("2018-01-11") )
batch5 = Batch.create!( number: 5, start_date: DateTime.parse("2018-01-11"), end_date: DateTime.parse("2018-03-11") )
batch6 = Batch.create!( number: 6, start_date: DateTime.parse("2018-03-11"), end_date: DateTime.parse("2018-05-11") )
batch7 = Batch.create!( number: 7, start_date: DateTime.parse("2018-05-11"), end_date: DateTime.parse("2018-07-11") )

student1 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch1} )
student2 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Abraham Lincoln", batch: batch1} )
student3 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Patrick Swayze", batch: batch1} )
student4 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Lenon", batch: batch2} )
student5 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Jonathan Cruyf", batch: batch2} )
student6 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Simon Cat", batch: batch3} )
student7 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Harry Potter", batch: batch3} )
student8 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "George Cloney", batch: batch3} )
student9 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Donald Trump", batch: batch4} )
student10 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Roman Polanski", batch: batch4} )
student11 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "Kaneel Biscuit", batch: batch4} )

performance1 = Performance.create!( student: student1, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance2 = Performance.create!( student: student2, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance3 = Performance.create!( student: student3, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance4 = Performance.create!( student: student4, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance5 = Performance.create!( student: student5, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance6 = Performance.create!( student: student6, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance7 = Performance.create!( student: student7, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance8 = Performance.create!( student: student8, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance9 = Performance.create!( student: student9, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance10 = Performance.create!( student: student10, rate: "3", remarks: "Lorem imsum dolor sin amet")
performance11 = Performance.create!( student: student11, rate: "3", remarks: "Lorem imsum dolor sin amet")

