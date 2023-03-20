// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Initialise an empty map
    Map<int, int> map = {};

    // Loop through the "nums" array
    for(int i = 0; i < nums.length; i++) {
        // Define current number
        int current = nums[i]; 
        int x = target - current; // Find x

        // If map contains the indices of x then return it along with i's indices.
        if(map.containsKey(x)){
            final value = map[x]!;
            return [value,i];
        }else{
            map[nums[i]] = i;
        }
    };
    return [];
  }
}