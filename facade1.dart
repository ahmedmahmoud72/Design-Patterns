void main()
{
  Computer computer = Computer();
  computer.run();
}
class HardDrive
{
  void readData()
  {
    print("Reading Data from HardDrive");
  }
}
class Memory
{
  void load()
  {
    print("Data Loading from memory...");
  }
}
class Cpu
{
  void processData()
  {
    print("Cpu Process");
  }
}

class Computer
{
  HardDrive? hard;
  Memory? memory;
  Cpu? cpu;
  Computer()
  {
    hard = HardDrive();
    memory = Memory();
    cpu = Cpu();
  }
  void run()
  {
    hard!.readData();
    memory!.load();
    cpu!.processData();

  }

}
