namespace TodoListService
{
    public class UselessClass
    {
        public UselessClass()
        {
            Valor = 99;
        }

        /// <summary>
        /// Valor a revisar
        /// </summary>
        public int Valor { get; set; }

        public override string ToString()
        {
            return System.String.Format($"{Valor}");
        }

    }
}
