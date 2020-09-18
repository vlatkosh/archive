#include <bits/stdc++.h>
using namespace std;

#define MAXSIZE 64
#define SLLMAX 18446744073709551615 //2^64-1
typedef signed long long sll;
typedef multimap<string, string>::iterator mmss_it;

inline string strlower(string&);
void parse_words(string);
void parse_elements(string);
void checkWordToElement(string);
void checkElementsToWord(vector<string>&, string);

multimap<string, string> words; // key = {a, ab, abc, ..., abcdef}, value = abcdef
map<string, string> elements; // key = lowercase, value = real

//Main function, initialize and handle input
int main() {
    parse_elements("elements.txt");
    parse_words("words1.txt");
    string input_str;
    while (true) {
        getline(cin, input_str);
        stringstream input(input_str);
        string w1, w2;
        input >> w1;
        if (w1 == "wte") {
            input >> w2;
            checkWordToElement(w2);
        } else if (w1 == "etw") {
            vector<string> els;
            string original, el;
            while (input >> el) {
                el = strlower(el);
                if (elements[el] != "") {
                    els.push_back(el);
                    original += el;
                }
            }
            checkElementsToWord(els, original);
        } else if (w1 == "quit" || w1 == "exit" || w1 == "goodbye" || w1 == "bye") {
            cout << "Goodbye.";
            break;
        } else {
            cout << "Unrecognized command.\n";
        }
        cout << '\n';
    }
}

//Convert string to lowercase
inline string strlower(string &s) {
    string s1 = "";
    for (char c : s) s1 += tolower(c);
    return s1;
}

//Parses a text file of words (one per line)
//For every word W in the file, populate 'words' with W[0:i], for i=1, 2, ..., W.length
void parse_words(string file) {
    ifstream infile(file);
    string word;
    while (getline(infile, word)) {
        string temp = "";
        for (char c : word) {
            temp += c;
            words.insert({temp, word});
        }
    }
}

//Parses a text file line by line and populates 'elements' with it
void parse_elements(string file) {
    ifstream infile(file);
    string el;
    while (getline(infile, el)) {
        elements[strlower(el)] = el;
    }
}

//Main function for checkWordToElement
void cWTEtest(string &result, string &word, int len, int k, string carry, bool &done) {
    int maxi = len-k > 3 ? 4 : len-k;
//    cout << "result=" << result << " word=" << word << " len=" << len << " k=" << k << " carry=" << carry << " maxi=" << maxi << endl;
    if (maxi < 1) {
        result = carry;
        done = true;
        return;
    }
    string temp = "";
    for (int i = 0; i < maxi; ++i) {
        if (done) return;
        temp += tolower(word[k+i]);
        string str = elements[temp];
//        cout << "  char=" << word[k+i] << " str=" << str << endl;
        if (str != "") {
            cWTEtest(result, word, len, k+i+1, carry+str, done);
        }
    }
}

//Check if a given string can be formed using only the chemical elements
void checkWordToElement(string word) {
    string result = "";
    bool done = false;
    cWTEtest(result, word, word.length(), 0, "", done);
    if (result != "") {
        cout << "Succeeded in forming '" << word << "' using chemical elements: " << result << '\n';
    } else {
        cout << "Could not form '" << word << "' using chemical elements.\n";
    }
}

//Main function for checkElementsToWord
void cETWtest(string &result, pair<mmss_it, mmss_it> range, vector<string> &els,
              sll indicesDone, int numIndicesDone, string carry, string carryReal, bool &done) {
    if (done) return;
    if (numIndicesDone == els.size()) {
        result = carryReal;
        done = true;
        return;
    }
    for (int i = 0; !(indicesDone & (1 << i)) && i < els.size(); ++i) { //indicesDone & (1 << i) = is i'th bit on?
        sll indicesDone1 = indicesDone;
        indicesDone1 |= (1 << i); //turn on i'th bit
        string element = els[i];
        string elementReal = elements[element];
        string carry1 = carry + element;
        string carry1Real = elementReal + carryReal;
        pair<mmss_it, mmss_it> range1 = words.equal_range(carry1); //pair<it, it>
//            cout << "elsReal={";
//            for (string Z : els) cout << elements[Z] << ",";
//            cout << "} sll=";
//            bitset<MAXSIZE> X = indicesDone1;
//            cout << X << " numIndicesDone=" << numIndicesDone+1 << " elementReal=" << elementReal << " carry1Real=" << carry1Real << endl;
        cETWtest(result, range1, els, indicesDone1, numIndicesDone+1, carry1, carry1Real, done);
    }
}

//Check if a word can be made up of a given list of elements
void checkElementsToWord(vector<string> &els, string original) {
    string result = "";
    bool done = false;
    cETWtest(result, {words.begin(), words.end()}, els, 0, 0, "", "", done);
    if (result != "" && result != original) {
        cout << "Best word I could make is: " << result << '\n';
    } else {
        cout << "Could not make a word from the given elements.\n";
    }
}
