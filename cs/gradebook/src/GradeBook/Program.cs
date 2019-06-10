using System;
using System.Collections.Generic;

namespace GradeBook
{
    class Program
    {
        static void Main(string[] args)
        {
            var book = new Book("My gradebook");
            book.AddGrade(89.1);
            book.AddGrade(90.6);

            var average = book.GetAverage();
            Console.WriteLine(average);

            book.ShowStatistics();
        }
    }
}
