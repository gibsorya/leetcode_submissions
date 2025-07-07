class Solution {
public:
    vector<int> findAnagrams(string s, string p) {
        int s_length = s.length();
        int p_length = p.length();
        if (s_length < p_length) return {};

        vector<int> indices;
        vector<int> check(26, 0);
        vector<int> window(26, 0);

        for(int i = 0; i < p_length; i++) {
            check[p[i] - 'a']++;
            window[s[i] - 'a']++;
        }

        if(check == window) indices.emplace_back(0);

        for(int i = p_length; i < s_length; i++) {
            window[s[i - p_length] - 'a']--;
            window[s[i] - 'a']++;
            if(window == check) indices.emplace_back(i - p_length + 1);
        }

        return indices;
    }
};
