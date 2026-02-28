
// Keep asking until the user provides valid input

// input is only valid if number is between 1 and 10 inclusive

Console.WriteLine("enter a number");
int num = Convert.ToInt32(Console.ReadLine());

int count = 1;
int sum = 0;

while (count <= num)
{
    sum = sum + count;
    count++;
}
Console.WriteLine(sum);
