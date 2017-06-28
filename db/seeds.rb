Teacher.delete_all
Student.delete_all
Batch.delete_all
Performance.delete_all

teacher1 = Teacher.create!( {email: "teacher@teacher.com", password:"123456"} )

student1 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch1} )
student2 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch2} )
student3 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch3} )
student4 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch4} )
student5 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch5} )
student6 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch6} )
student7 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch7} )
student8 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch1} )
student9 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch2} )
student10 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch3} )
student11 = Student.create!( {picture: "https://goo.gl/r5cw83", full_name: "John Doe", batch: batch4} )

batch1 = Batch.create!( number: 1 )
batch2 = Batch.create!( number: 2 )
batch3 = Batch.create!( number: 3 )
batch4 = Batch.create!( number: 4 )
batch5 = Batch.create!( number: 5 )
batch6 = Batch.create!( number: 6 )
batch7 = Batch.create!( number: 7 )

performance1 = Performance.create!( student: student1, color: "red", remarks: "Lorem imsum dolor sin amet")
performance2 = Performance.create!( student: student2, color: "red", remarks: "Lorem imsum dolor sin amet")
performance3 = Performance.create!( student: student3, color: "red", remarks: "Lorem imsum dolor sin amet")
performance4 = Performance.create!( student: student4, color: "red", remarks: "Lorem imsum dolor sin amet")
performance5 = Performance.create!( student: student5, color: "red", remarks: "Lorem imsum dolor sin amet")
performance6 = Performance.create!( student: student6, color: "red", remarks: "Lorem imsum dolor sin amet")
performance7 = Performance.create!( student: student7, color: "red", remarks: "Lorem imsum dolor sin amet")
performance8 = Performance.create!( student: student8, color: "red", remarks: "Lorem imsum dolor sin amet")
performance9 = Performance.create!( student: student9, color: "red", remarks: "Lorem imsum dolor sin amet")
performance10 = Performance.create!( student: student11, color: "red", remarks: "Lorem imsum dolor sin amet")
performance11 = Performance.create!( student: student12, color: "red", remarks: "Lorem imsum dolor sin amet")
