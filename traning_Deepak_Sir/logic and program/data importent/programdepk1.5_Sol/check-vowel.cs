Console.WriteLine("enter the character");

  char ch=Convert.ToChar(Console.ReadLine()) ;
  switch (ch)
  {
      case 'a':
          Console.WriteLine("a is vowel");
          break;
      case 'e':
          Console.WriteLine("e is vowel");
          break;
      case 'i':
          Console.WriteLine("i is vowel");
          break;

      case 'o':
          Console.WriteLine("o is vowel");
          break;
      case 'u':
          Console.WriteLine("u is vowel");
          break;
      default:
          Console.WriteLine(" consonant");
          break;
