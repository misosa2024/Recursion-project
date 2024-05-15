// Java Program to find the Nth

import java.util.ArrayList;
import java.util.Scanner;

public class Pascal {


    // rowIndex in Pascal's Triangle
    public static ArrayList<Integer> getRow(
            int rowIndex)
    {
        ArrayList<Integer> currow
                = new ArrayList<Integer>();
        // 1st element of every row is 1
        currow.add(1);

        // Check if the row that has to
        // be returned is the first row
        if (rowIndex == 0) {
            return currow;
        }
        // Generate the previous row
        ArrayList<Integer> prev = getRow(rowIndex
                - 1);

        for (int i = 1; i < prev.size(); i++) {
             // of the current row
             int curr = prev.get(i - 1)
                    + prev.get(i);
            currow.add(curr);
        }
        currow.add(1);

        // Return the row
        return currow;
    }

    // Driver
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        System.out.println(" type number of the row you would like to output on the Pascal triangle");
        int n = scanner.nextInt();
        ArrayList<Integer> arr = getRow(n);

        for (int i = 0; i < arr.size(); i++) {
            if (i == arr.size() - 1)
                System.out.print(arr.get(i));
            else
                System.out.print(arr.get(i)
                        + ", ");
        }
    }
}
