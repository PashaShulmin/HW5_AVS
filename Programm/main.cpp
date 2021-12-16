#include <iostream>
#include <thread>
#include <mutex>
#include <fstream>

using std::string;

// Создаём экземпляр класса mutex
std::mutex mtx;

// Функция для проверки строки на корректность ввода,
// строка должна состоять из букв символов "_" и пробелов,
// а также не должна быть пустой
bool checkString(const string& s) {
    if (s.length() == 0) {
        return false;
    }
    for (char c : s) {
        if (!isalpha(c) && c != '_' && c != ' ') {
            return false;
        }
    }
    return true;
}

// Функция кодирования строки.
// res - строка, в котрую записывается результат кодирования
// message - исходное сообщение, которое нужно кодировать
// from - индекс символа, с которого начинать кодирование (включительно)
// to - индекс символа, на котором надо закончить кодирование (исключительно)
void encodeString(std::string* res, std::string message, int from, int to) {
    // Защищаем функцию от выполнения сразу несколькими потоками.
    mtx.lock();
    for (int i = from; i < to; ++i) {
        // записываем в результат код очередного символа
        *res += std::to_string(static_cast<int>(message[i]));
    }
    std::cout << "Thread with id: " << std::this_thread::get_id() << " encode symbols from "
              << from << " to " << to << " positions." << "\n";
    mtx.unlock();
}

void message1() {
    std::cout << "Incorrect number of entry parameters. If you want to read your message"
                 "from the console it shouldn't be any entry parameters. \nOr it can be one"
                 "enter parameter the message which you want to encode.";
}

void message2() {
    std::cout << "String must consist of latin letters, underscore or spaces.";
}

int main(int argc, char* argv[]) {
    // время начала работы программы
    auto start = std::chrono::high_resolution_clock::now();

    // входная строка
    string s;
    // считывание входного сообщения
    // если во входных параметрах только экзешник тогда считать сообщение из консоли
    if (argc == 1) {
        std::getline(std::cin, s);
        // если два параметра, то расценивать второй как входное сообщение
    } else {
        if (argc == 2) {
            s = argv[1];
            // вывести сообщение об ошибке
        } else {
            message1();
        }
    }
    // если строка некорректного формата, вывести сообщение об ошибке
    if (!checkString(s)) {
        message2();
        return 0;
    }
    std::string res;

    // разбиваем строку на три части
    int one_third = s.length() / 2;
    int two_third = s.length() / 2 * 2;

    // первую треть строки кодирует основной поток
    encodeString(&res, s, 0, one_third);

    // вторую и третью треть кодируют созданные потоки
    std::thread t1(encodeString, &res, s, one_third, two_third);
    std::thread t2(encodeString, &res, s, two_third, s.length());

    t1.join();
    t2.join();

    // вывод закодированного сообщения в файл и консоль
    std::ofstream ostream("Out.txt");
    ostream << res << "\n";
    std::cout << res << "\n";

    // считаем время исполнения
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;

    // выводим информацию о времени работы в файл и консоль
    ostream << "Time: " << duration.count() << " sec.";
    std::cout << "Time: " << duration.count() << " sec.";

    return 0;
}
