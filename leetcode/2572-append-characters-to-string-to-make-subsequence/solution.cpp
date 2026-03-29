class Solution {
public:
    int appendCharacters(string s, string t) {
        int i = 0, j = 0;
        int sLength = s.length(), tLength = t.length();


        while(i < sLength && j < tLength) {
            if(s[i] == t[j]) {
                j++;
            }
            i++;
        }

        return tLength - j;
    }
};
