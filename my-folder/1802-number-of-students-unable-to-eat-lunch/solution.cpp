
class Solution {
public:
    int countStudents(vector<int>& students, vector<int>& sandwiches) {
        int circleStudentCount = 0;
        int squareStudentCount = 0;

        for(auto student : students) {
            switch (student) {
            case 0:
                circleStudentCount++;
                break;
            case 1:
                squareStudentCount++;
                break;
            }
        }

        for (auto sandwich : sandwiches) {
            if(sandwich == 0 && circleStudentCount == 0) {
                return squareStudentCount;
            } else if(sandwich == 1 && squareStudentCount == 0) {
                return circleStudentCount;
            } 

            switch(sandwich) {
                case 0:
                    circleStudentCount--;
                    break;
                case 1:
                    squareStudentCount--;
                    break;
            }
        }

        return 0;
    }
};
