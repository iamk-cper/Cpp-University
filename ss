// Kacper Mycka
using namespace std;

struct Element {
    bool ebool;
    int echar;
    float efloat;
};
struct Data {
    int int1;
    string str1;
    string chr1;
    Element ele1;
    Element ele2;
    Element ele3;
    Element ele4;
};

void SortHelp(string source, string helper1, string helper2) {
    fstream src, help1, help2;
    //string first;
    string line;
    int a, b, c, min, max, first;
    // wyczyszczenie pomocniczych
    help1.open(helper1.c_str(), fstream::out);
    help1.close();
    help2.open(helper2.c_str(), fstream::out);
    help2.close();

    // trzeba znalezc min stringa i max inta
    src.open(source.c_str(), fstream::in);
    if (src >> a) {
        min = a;
        max = a;
        for (int i = 0; i < 7; i++) {
            getline(src, line);
        }
    }
    else {
        return;
    } // dla pustego pliku

    while (src >> a) {
        // porownanie nowego min i max i zmiana
        if (a < min) {
            min = a;
        }
        else if (a > max) {
            max = a;
        }
        for (int i = 0; i < 7; i++) {
            getline(src, line);
        }
    }
    src.close();

    help1.open(helper1.c_str(), fstream::out);
    while (min != max) {
        src.open(source.c_str(), fstream::in);
        while (src >> a) {
            if (a == max) {
                help1 << a << endl;
                getline(src, line);
                for (int i = 0; i < 6; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line);
                }
            }
        }
        //zmiana min max
        src.close();
        src.open(source.c_str(), fstream::in);
        b = min;
        while (src >> a) {
            c = 0;
            if (a > b) {
                c = 0;
                if (a < max) {
                    b = a;
                }
            }
            for (int i = 0; i < 7; i++) {
                getline(src, line);
            }
        }
        max = b;
        src.close();
    }
    // ostatnie dla min == max
    if (min == max) {
        src.open(source.c_str(), fstream::in);
        while (src >> a) {
            if (a == max) {
                help1 << a << endl;
                getline(src, line);
                for (int i = 0; i < 6; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line);
                }
            }
        }
        src.close();
    }
    help1.close();

} // sortint tylko malejacy
void SortInt(string source, string helper1, string helper2) {
    fstream src, help1, help2;
    //string first;
    string line;
    int a, b, c, min, max, first;
    // wyczyszczenie pomocniczych
    help1.open(helper1.c_str(), fstream::out);
    help1.close();
    help2.open(helper2.c_str(), fstream::out);
    help2.close();

    // trzeba znalezc min stringa i max inta
    src.open(source.c_str(), fstream::in);
    if (src >> a) {
        min = a;
        max = a;
        for (int i = 0; i < 7; i++) {
            getline(src, line);
        }
    }
    else {
        return;
    } // dla pustego pliku

    while (src >> a) {
        // porownanie nowego min i max i zmiana
        if (a < min) {
            min = a;
        }
        else if (a > max) {
            max = a;
        }
        for (int i = 0; i < 7; i++) {
            getline(src, line);
        }
    }
    src.close();

    help1.open(helper1.c_str(), fstream::out);
    while (min != max) {
        src.open(source.c_str(), fstream::in);
        while (src >> a) {
            if (a == min) {
                help1 << a << endl;
                getline(src, line);
                for (int i = 0; i < 6; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line);
                }
            }
        }
        //zmiana min max
        src.close();
        src.open(source.c_str(), fstream::in);
        b = max;
        while (src >> a) {
            c = 0;
            if (a < b) {
                c = 0;
                if (a > min) {
                    b = a;
                }
            }
            for (int i = 0; i < 7; i++) {
                getline(src, line);
            }
        }
        min = b;
        src.close();
    }
    // ostatnie dla min == max
    if (min == max) {
        src.open(source.c_str(), fstream::in);
        while (src >> a) {
            if (a == min) {
                help1 << a << endl;
                getline(src, line);
                for (int i = 0; i < 6; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line);
                }
            }
        }
        src.close();
    }
    help1.close();

    src.open(source.c_str(), fstream::out);
    help1.open(helper1.c_str(), fstream::in);
    while(!help1.eof()) {
        getline(help1,line);
        if (!help1.eof()) {
            src << line << endl;
        }
    }
    src.close();
    help1.close();
    // zamiana miedzy plikami help1 i src


    // czyszczenie na koniec
    help1.open(helper1.c_str(), fstream::out);
    help1.close();

}
void SymmetricDifference(string source, string toadd, string helper) {
    fstream src, add, help;
    int exist = 0;
    string string1;
    string line1, line2, line3, line4, line5, line6, line7;
    // czyszczenie pliku pomocniczego
    help.open(helper.c_str(), fstream::out);
    help.close();
    //
    add.open(toadd.c_str(), fstream::in);
    help.open(helper.c_str(), fstream::out);
    while (getline(add, line1)) {
        getline(add, line2);
        getline(add, line3);
        getline(add, line4);
        getline(add, line5);
        getline(add, line6);
        getline(add, line7);
        src.open(source.c_str(), fstream::in);
        while (getline(src, string1)) {
            if (string1 == line1) {
                getline(src, string1);
                if (string1 == line2) {
                    getline(src, string1);
                    if (string1 == line3) {
                        getline(src, string1);
                        if (string1 == line4) {
                            getline(src, string1);
                            if (string1 == line5) {
                                getline(src, string1);
                                if (string1 == line6) {
                                    getline(src, string1);
                                    if (string1 == line7) {
                                        exist = 1;
                                        //cout << "istnieje";
                                        break;
                                    }
                                }
                                else {
                                    getline(src, string1);
                                }
                            }
                            else {
                                for (int i = 0; i < 2; i++) {
                                    getline(src, string1);
                                }
                            }
                        }
                        else {
                            for (int i = 0; i < 3; i++) {
                                getline(src, string1);
                            }
                        }
                    }
                    else {
                        for (int i = 0; i < 4; i++) {
                            getline(src, string1);
                        }
                    }
                }
                else {
                    for (int i = 0; i < 5; i++) {
                        getline(src, string1);
                    }
                }
            }
            else {
                for (int i = 0; i < 6; i++) {
                    getline(src, string1);
                }
            }
        }
        src.close();
        if (exist == 1) {
            help << line1 << endl << line2 << endl << line3 << endl << line4 << endl << line5 << endl << line6 << endl << line7 << endl;
            exist = 0;
        }
        else {
            src.open(source.c_str(), fstream::app | fstream::out);
            src << endl << line1 << endl << line2 << endl << line3 << endl << line4 << endl << line5 << endl << line6 << endl << line7;
            src.close();
        }
    }
    add.close();
    help.close();
    // przeniesienie z pliku pomocniczego do add
    help.open(helper.c_str(), fstream::in);
    add.open(toadd.c_str(), fstream:: out);

    while(!help.eof()) {
        getline(help,string1);
        if (!help.eof()) {
            add << string1 << endl;
        }
    }
    add.close();
    help.close();
    // wyczyszczenie pliku pomocniczego
    help.open(helper.c_str(), fstream::out);
    help.close();
}
void SortString(string source, string helper1, string helper2) {
    fstream src, help1, help2;
    string line, min, max;
    string first;
    string x;
    int a;
    // wyczyszczenie pomocniczych
    help1.open(helper1.c_str(), fstream::out);
    help1.close();
    help2.open(helper2.c_str(), fstream::out);
    help2.close();

    // trzeba znalezc min stringa i max stringa
    src.open(source.c_str(), fstream::in);
    getline(src, line);
    if (getline(src, line)) {
        min = line;
        max = line;
        for (int i = 0; i < 6; i++) {
            getline(src, line);
        }
    }
    else {
        return;
    } // dla pustego pliku

    while (getline(src, line)) {
        // porownanie nowego line z min i max i zmiana
        if (line < min) {
            min = line;
        }
        if (line > max) {
            max = line;
        }
        for (int i = 0; i < 6; i++) {
            getline(src, line);
        }
    }
    src.close();

    help1.open(helper1.c_str(), fstream::out);
    while (min != max) {
        src.open(source.c_str(), fstream::in);
        while (getline(src,line)) {
            first = line;
            getline(src,line);
            if (line == min) {
                help1 << first << endl << line << endl;
                for (int i = 0; i < 5; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 5; i++) {
                    getline(src, line);
                }
            }
        }
        //zmiana min max
        src.close();
        src.open(source.c_str(), fstream::in);
        x = max;
        getline(src, line);
        while (getline(src, line)) {
            a = 0;
            if (line < x) {
                a = 0;
                if (line > min) {
                    x = line;
                }
            }
            for (int i = 0; i < 6; i++) {
                getline(src, line);
            }
        }
        min = x;
        src.close();
    }
    // ostatnie dla min == max
    if (min == max) {
        src.open(source.c_str(), fstream::in);
        while (getline(src,line)) {
            first = line;
            getline(src,line);
            if (line == min) {
                help1 << first << endl << line << endl;
                for (int i = 0; i < 5; i++) {
                    getline(src, line);
                    help1 << line << endl;
                }
            }
            else {
                for (int i = 0; i < 5; i++) {
                    getline(src, line);
                }
            }
        }
        src.close();
    }
    help1.close();

    src.open(source.c_str(), fstream::out);
    help1.open(helper1.c_str(), fstream::in);
    while(!help1.eof()) {
        getline(help1,line);
        if (!help1.eof()) {
            src << line << endl;
        }
    }
    src.close();
    help1.close();
    // zamiana miedzy plikami help1 i src


    // czyszczenie na koniec
    help1.open(helper1.c_str(), fstream::out);
    help1.close();

}
void SortCount(string source, string helper1, string helper2) {
    SortHelp(source,helper1,helper2);
    fstream src, help1, help2;
    // przekazanie informacji o licznosci do help2
    help1.open(helper1.c_str(), fstream::in);
    help2.open(helper2.c_str(), fstream::out);
    string line1;
    int counter = 1, intline, intbef;
    int mini, maxi, var, useit, que, var2;
    if (help1 >> intbef) {
        for (int i = 0; i < 7; i++) {
            getline(help1, line1);
        }
        while (help1 >> intline) {
            getline(help1, line1);
            if (intbef == intline) {
                counter++;
            }
            else {
                help2 << counter << " " << intbef << endl;
                intbef = intline;
                counter = 1;
            }
            for (int i = 0; i < 6; i++) {
                getline(help1, line1);
            }
        }
        help2 << counter << " " << intbef << endl;
    }
    else {
        return;
    }
    help1.close();
    help2.close();
    // znalezienie najwiekszej i najmniejszej licznosci
    help2.open(helper2.c_str(), fstream::in);
    // wiem ze mamy co najmniej jedna dana w pliku wiec
    help2 >> mini;
    maxi = mini;
    getline(help2, line1);
    while (help2 >> var) {//
        if (var < mini) mini = var;
        else if (var > maxi) maxi = var;
        getline(help2, line1);
    }
    help2.close();
    // petla ktora daje najwieksze licznosci na poczatek i wylicza nowa najwieksza licznosc
    src.open(source.c_str(), fstream::out);
    while (mini != maxi) {
        help2.open(helper2.c_str(), fstream::in);
        while (help2 >> var) {
            if (var == maxi) {
                help2 >> useit;
                getline(help2, line1);
                help1.open(helper1.c_str(), fstream::in);
                while (help1 >> que) {
                    if (que == useit) {
                        src << que << endl;
                        getline(help1, line1);
                        for (int i = 0; i < 6; i++) {
                            getline(help1, line1);
                            src << line1 << endl;
                        }
                    }
                    else {
                        getline(help1, line1);
                        for (int i = 0; i < 6; i++) {
                            getline(help1, line1);
                        }
                    }
                }
                help1.close();
            }
            else {
                getline(help2, line1);
            }
        }
        // wybieramy nowe maxi
        help2.close();
        help2.open(helper2.c_str(), fstream::in);

        var2 = mini;
        while (help2 >> var) {
            if (var < maxi && var >= var2) {
                var2 = var;
            }
            getline(help2, line1);
        }
        maxi = var2;
        help2.close();
    }
    // ostatni raz dla mini == maxi
    help2.open(helper2.c_str(), fstream::in);
    while (help2 >> var) {
        if (var == mini) {
            help2 >> useit;
            help1.open(helper1.c_str(), fstream::in);
            while (help1 >> que) {
                if (que == useit) {
                    src << que << endl;
                    getline(help1, line1);
                    for (int i = 0; i < 6; i++) {
                        getline(help1, line1);
                        src << line1 << endl;
                    }
                }
                else {
                    getline(help1, line1);
                    for (int i = 0; i < 6; i++) {
                        getline(help1, line1);
                    }
                }
            }
            help1.close();
        }
        else {
            getline(help2, line1);
        }
    }
    help2.close();
    src.close();


    // dodac sortowanie skladowymi
    int sum, maxsum, minsum, helpsum;
    Data data1, data2;
    fstream helpsrc;

    help2.open(helper2.c_str(),fstream::out);
    helpsrc.open(source.c_str(), fstream::in);

    helpsrc >> var;
    getline(helpsrc, line1);
    for (int i = 0; i < 6; i++) {
        getline(helpsrc, line1);
    }
    while (helpsrc >> var2) {
        if (var2 == var) {
            getline(helpsrc, line1);
            for (int i = 0; i < 6; i++) {
                getline(helpsrc, line1);
            }
        }
        else {
            src.open(source.c_str(), fstream::in);
            // wiemy ze mamy co najmniej jeden element wiec
            while (src >> data1.int1) {
                if (data1.int1 == var) {
                    getline(src, line1);
                    getline(src, data1.str1);
                    getline(src, data1.chr1);
                    src >> data1.ele1.ebool >> data1.ele1.echar >> data1.ele1.efloat;
                    src >> data1.ele2.ebool >> data1.ele2.echar >> data1.ele2.efloat;
                    src >> data1.ele3.ebool >> data1.ele3.echar >> data1.ele3.efloat;
                    src >> data1.ele4.ebool >> data1.ele4.echar >> data1.ele4.efloat;
                    maxsum = (data1.ele1.echar + data1.ele2.echar + data1.ele3.echar + data1.ele4.echar) % 256;
                    minsum = maxsum;
                    break;
                }
                else {
                    getline(src, line1);
                    for (int i = 0; i < 6; i++) {
                        getline(src, line1);
                    }
                 }
            }
            // kolejne elementy
            while (src >> data2.int1) {
                if (data2.int1 == data1.int1) {
                    getline(src, line1);
                    sum = 0;
                    getline(src, data2.str1);
                    getline(src, data2.chr1);
                    src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                    src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                    src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                    src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                    sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                    if (sum > maxsum) maxsum = sum;
                    else if (sum < minsum) minsum = sum;
                }
                else {
                    break;
                }
            }

            // max i min suma wyliczona
            src.close();

            while (minsum != maxsum) {
                src.open(source.c_str(), fstream::in);
                while (src >> data2.int1) {
                    if (data2.int1 == data1.int1) {
                        getline(src, line1);
                        sum = 0;
                        getline(src, data2.str1);
                        getline(src, data2.chr1);
                        src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                        src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                        src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                        src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                        sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                        if (sum == maxsum) {
                            help2 << data2.int1 << endl << data2.str1 << endl << data2.chr1 << endl;
                            help2 << data2.ele1.ebool << " " << data2.ele1.echar << " " << data2.ele1.efloat << endl;
                            help2 << data2.ele2.ebool << " " << data2.ele2.echar << " " << data2.ele2.efloat << endl;
                            help2 << data2.ele3.ebool << " " << data2.ele3.echar << " " << data2.ele3.efloat << endl;
                            help2 << data2.ele4.ebool << " " << data2.ele4.echar << " " << data2.ele4.efloat << endl;
                        }
                    }
                    else {
                        getline(src, line1);
                        for (int i = 0; i < 6; i++) {
                            getline(src, line1);
                        }
                    }
                }
                src.close();
                // znalezienie nowego maxa
                src.open(source.c_str(), fstream::in);
                helpsum = minsum;
                while (src >> data2.int1) {
                    if (data2.int1 == data1.int1) {
                        getline(src, line1);
                        sum = 0;
                        getline(src, data2.str1);
                        getline(src, data2.chr1);
                        src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                        src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                        src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                        src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                        sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                        if (sum < maxsum && sum >= helpsum) helpsum = sum;
                    }
                    else {
                        getline(src, line1);
                        for (int i = 0; i < 6; i++) {
                            getline(src, line1);
                        }
                        //break;
                    }
                }
                maxsum = helpsum;
                src.close();
            }

            // teraz minsum = maxsum
            src.open(source.c_str(), fstream::in);
            while (src >> data2.int1) {
                if (data2.int1 == data1.int1) {
                    getline(src, line1);
                    sum = 0;
                    getline(src, data2.str1);
                    getline(src, data2.chr1);
                    src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                    src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                    src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                    src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                    sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                    if (sum == maxsum) {
                        help2 << data1.int1 << endl << data2.str1 << endl << data2.chr1 << endl;
                        help2 << data2.ele1.ebool << " " << data2.ele1.echar << " " << data2.ele1.efloat << endl;
                        help2 << data2.ele2.ebool << " " << data2.ele2.echar << " " << data2.ele2.efloat << endl;
                        help2 << data2.ele3.ebool << " " << data2.ele3.echar << " " << data2.ele3.efloat << endl;
                        help2 << data2.ele4.ebool << " " << data2.ele4.echar << " " << data2.ele4.efloat << endl;
                    }
                }
                else {
                    getline(src, line1);
                    for (int i = 0; i < 6; i++) {
                        getline(src, line1);
                    }
                    //break;
                }
            }
            src.close();
            // zgodnie z var2
            var = var2;


            getline(helpsrc, line1);
            for (int i = 0; i < 6; i++) {
                getline(helpsrc, line1);
            }
        }
    }


    // ostatni raz na podstawie var2
    src.open(source.c_str(), fstream::in);
    // wiemy ze mamy co najmniej jeden element wiec
    while (src >> data1.int1) {
        if (data1.int1 == var2) {
            getline(src, line1);
            getline(src, data1.str1);
            getline(src, data1.chr1);
            src >> data1.ele1.ebool >> data1.ele1.echar >> data1.ele1.efloat;
            src >> data1.ele2.ebool >> data1.ele2.echar >> data1.ele2.efloat;
            src >> data1.ele3.ebool >> data1.ele3.echar >> data1.ele3.efloat;
            src >> data1.ele4.ebool >> data1.ele4.echar >> data1.ele4.efloat;
            maxsum = (data1.ele1.echar + data1.ele2.echar + data1.ele3.echar + data1.ele4.echar) % 256;
            minsum = maxsum;
            break;
        }
        else {
            for (int i = 0; i < 7; i++) {
                getline(src, line1);
            }
        }
    }

    // kolejne elementy
    while (src >> data2.int1) {
        if (data2.int1 == data1.int1) {
            getline(src, line1);
            sum = 0;
            getline(src, data2.str1);
            getline(src, data2.chr1);
            src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
            src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
            src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
            src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
            sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
            if (sum > maxsum) maxsum = sum;
            else if (sum < minsum) minsum = sum;
        }
        else {
            break;
        }
    }

    // max i min suma wyliczona
    src.close();

    while (minsum != maxsum) {
        src.open(source.c_str(), fstream::in);
        while (src >> data2.int1) {
            if (data2.int1 == data1.int1) {
                getline(src, line1);
                sum = 0;
                getline(src, data2.str1);
                getline(src, data2.chr1);
                src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                if (sum == maxsum) {
                    help2 << data2.int1 << endl << data2.str1 << endl << data2.chr1 << endl;
                    help2 << data2.ele1.ebool << " " << data2.ele1.echar << " " << data2.ele1.efloat << endl;
                    help2 << data2.ele2.ebool << " " << data2.ele2.echar << " " << data2.ele2.efloat << endl;
                    help2 << data2.ele3.ebool << " " << data2.ele3.echar << " " << data2.ele3.efloat << endl;
                    help2 << data2.ele4.ebool << " " << data2.ele4.echar << " " << data2.ele4.efloat << endl;
                }
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line1);
                }
            }
        }
        src.close();
        // znalezienie nowego maxa
        src.open(source.c_str(), fstream::in);
        helpsum = minsum;
        while (src >> data2.int1) {
            if (data2.int1 == data1.int1) {
                getline(src, line1);
                sum = 0;
                getline(src, data2.str1);
                getline(src, data2.chr1);
                src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
                src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
                src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
                src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
                sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
                if (sum < maxsum && sum >= helpsum) helpsum = sum;
            }
            else {
                for (int i = 0; i < 7; i++) {
                    getline(src, line1);
                }
            }
        }
        maxsum = helpsum;
        src.close();
    }

    // now minsum == maxsum
    src.open(source.c_str(), fstream::in);
    while (src >> data2.int1) {
        if (data2.int1 == data1.int1) {
            getline(src, line1);
            sum = 0;
            getline(src, data2.str1);
            getline(src, data2.chr1);
            src >> data2.ele1.ebool >> data2.ele1.echar >> data2.ele1.efloat;
            src >> data2.ele2.ebool >> data2.ele2.echar >> data2.ele2.efloat;
            src >> data2.ele3.ebool >> data2.ele3.echar >> data2.ele3.efloat;
            src >> data2.ele4.ebool >> data2.ele4.echar >> data2.ele4.efloat;
            sum = (data2.ele1.echar + data2.ele2.echar + data2.ele3.echar + data2.ele4.echar) % 256;
            if (sum == maxsum) {
                help2 << data1.int1 << endl << data2.str1 << endl << data2.chr1 << endl;
                help2 << data2.ele1.ebool << " " << data2.ele1.echar << " " << data2.ele1.efloat << endl;
                help2 << data2.ele2.ebool << " " << data2.ele2.echar << " " << data2.ele2.efloat << endl;
                help2 << data2.ele3.ebool << " " << data2.ele3.echar << " " << data2.ele3.efloat << endl;
                help2 << data2.ele4.ebool << " " << data2.ele4.echar << " " << data2.ele4.efloat << endl;
            }
        }
        else {
            for (int i = 0; i < 7; i++) {
                getline(src, line1);
            }
        }
    }
    src.close();
    helpsrc.close();
    help2.close();

    src.open(source.c_str(), fstream::out);
    help2.open(helper2.c_str(), fstream::in);

    while(!help2.eof()) {
        getline(help2,line1);
        if (!help2.eof()) {
            src << line1 << endl;
        }
    }


    src.close();
    help2.close();

    // czyszczenie pomocniczych plikow na koniec
    help2.open(helper2.c_str(), fstream::out);
    help2.close();
}
