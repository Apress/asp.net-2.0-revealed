using System;
using System.Threading;

namespace MyLittleConsoleApp {

    public class MainClass {

        [STAThread]
        static void Main() {
            Thread myThread = new Thread(delegate() {
                for(int i = 0; i < 20; i++) {
                    Console.WriteLine("Working thread ...");
                    Thread.Sleep(500);
                    }
                });
            myThread.Start();

            for (int i = 0; i < 10; i++) {
                Console.WriteLine("In main.");
                Thread.Sleep(1000);
            }
            Console.Read();
        }
    }
}
