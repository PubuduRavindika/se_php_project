<?php

// Sample 2D array
$twoDArray = array(
    array('name' => 'John', 'age' => 30),
    array('name' => 'Alice', 'age' => 25),
    array('name' => 'Bob', 'age' => 35),
    // ... add more subarrays as needed
);

// Function to compare elements based on the 'age' key
function compareByAge($a, $b)
{
    return $b['age'] - $a['age'];
}

// Sort the 2D array using the custom comparison function
usort($twoDArray, 'compareByAge');

// Display the sorted array
print_r($twoDArray);
