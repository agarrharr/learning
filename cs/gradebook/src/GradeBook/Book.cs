using System;
using System.Collections.Generic;

namespace GradeBook
{
    class Book
    {
        public Book(string name)
        {
            grades = new List<double>();
            this.name = name;
        }

        public void AddGrade(double grade)
        {
            grades.Add(grade);
        }

        public double GetAverage() {

            var total = 0.0;
            foreach(var grade in grades)
            {
                total += grade;
            }
            return total / grades.Count;
        }

        public void ShowStatistics() {
            var lowGrade = double.MaxValue;
            var highGrade = double.MinValue;

            foreach(var grade in grades)
            {
                lowGrade = Math.Min(grade, lowGrade);
                highGrade = Math.Max(grade, highGrade);
            }
            Console.WriteLine($"The lowest grade is: {lowGrade}");
            Console.WriteLine($"The highest grade is: {highGrade}");
        }

        private List<double> grades;
        private string name;
    }
}