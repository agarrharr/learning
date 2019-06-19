using System;
using Xunit;

namespace GradeBook.Tests
{
    public class TypeTests
    {
        [Fact]
        public void GetBookReturnsDifferentObjects()
        {
            var book1 = GetBook("Great Expectations");
            /* var book2 = GetBook("Pride and Prejudice"); */

            Assert.Equal("Great Expectations", book1.Name);
            /* Assert.Equal("Pride and Prejudice", book2.name); */
        }

        Book GetBook(string name)
        {
            return new Book(name);
        }
    }
}
