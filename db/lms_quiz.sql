-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 11:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `q_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `q_id`, `q_answer`) VALUES
(1, 1, 'Speech recognition'),
(2, 1, 'Video conferencing'),
(3, 1, 'Audio digitizer'),
(4, 1, 'Synthesizer'),
(5, 3, 'A programming language'),
(6, 3, 'A computer program'),
(7, 3, 'An assemble'),
(8, 3, 'Syntax'),
(9, 4, 'CPU'),
(10, 4, 'RAM'),
(11, 4, 'ROM'),
(12, 4, 'Mother Board'),
(13, 5, 'CPU'),
(14, 5, 'RAM'),
(15, 5, 'ROM'),
(16, 5, 'Mother Board'),
(17, 6, '&lt;stdio.h&gt;, printf'),
(18, 6, '&lt;header&gt;, printf'),
(19, 6, '&lt;header&gt;,fprintf'),
(20, 6, '&lt;stdio.h&gt;, fprintf'),
(21, 7, 'A collection of four bits'),
(22, 7, 'The smallest unit of data on a binary computer'),
(23, 7, 'The smallest addressable datum on the 80 x 86 microprocessor.'),
(24, 7, 'A group of 16 bits'),
(25, 8, '// This is a comment'),
(26, 8, '&lt;!-- This is a comment--&gt;'),
(27, 8, '# This is a comment'),
(28, 8, '% This is a comment'),
(29, 9, 'float x = 3.2;'),
(30, 9, 'x = 3.2 double;'),
(31, 9, 'x = 3.2 float;'),
(32, 9, 'float x = 3.2'),
(33, 10, 'myFunction();'),
(34, 10, 'myFunction;'),
(35, 10, 'myFunction[];'),
(36, 10, '[myFunction];'),
(37, 11, 'None of the above'),
(38, 11, 'class();'),
(39, 11, 'class = myClass;'),
(40, 11, 'class[];'),
(41, 12, 'while (x &lt; y)'),
(42, 12, 'while x&lt; y'),
(43, 12, 'while x&lt;y then;'),
(44, 12, 'if while x&lt;y'),
(45, 13, 'All of the above'),
(46, 13, 'Encapsulation'),
(47, 13, 'Inheritance'),
(48, 13, 'Polymorphism'),
(49, 14, 'RAM'),
(50, 14, 'ROM'),
(51, 14, 'Processor'),
(52, 14, 'Hardware'),
(53, 15, 'Abacus'),
(54, 15, 'Stepped Reckoner'),
(55, 15, 'Slide Rule'),
(56, 15, 'Tally Sticks'),
(57, 16, 'Inherit properties and behaviors from another class'),
(58, 16, 'Have multiple parent classes'),
(59, 16, 'Have multiple child classes'),
(60, 16, 'Have multiple parent and child classes'),
(61, 17, 'Fiber-optic cable'),
(62, 17, 'Twisted pair cable'),
(63, 17, 'Coaxial cable'),
(64, 17, 'Wireless transmission'),
(65, 18, 'Modulating digital signals into analog signals for transmission over analog lines.'),
(66, 18, 'Converting analog signals to digital signals for transmission over digital lines.'),
(67, 18, 'Establishing a secure connection between two computers.'),
(68, 18, 'Converting digital signals to radio waves for wireless transmission.'),
(69, 19, 'Transmission Control Protocol/Internet Protocol'),
(70, 19, 'Transfer Control Protocol/Internet Protocol'),
(71, 19, 'Total Control Protocol/Internet Protocol'),
(72, 19, 'Terminal Connection Protocol/Internet Protocol'),
(73, 20, 'Transmission Control Protocol/Internet Protocol'),
(74, 20, 'Transfer Control Protocol/Internet Protocol'),
(75, 20, 'Total Control Protocol/Internet Protocol'),
(76, 20, 'Terminal Connection Protocol/Internet Protocol'),
(77, 21, 'Object-Oriented Programming'),
(78, 21, 'Object-Oriented Protocol'),
(79, 21, 'Object-Oriented Process'),
(80, 21, 'Object-Oriented Procedure'),
(81, 22, 'Inheritance'),
(82, 22, 'Encapsulation'),
(83, 22, 'Polymorphism'),
(84, 22, 'Abstraction'),
(85, 23, 'Many forms'),
(86, 23, 'One form'),
(87, 23, 'Two forms'),
(88, 23, 'No form'),
(89, 24, 'Read formatted input'),
(90, 24, 'Print formatted output'),
(91, 24, 'Perform arithmetic operations'),
(92, 24, 'Allocate memory'),
(93, 25, 'Objects'),
(94, 25, 'Methods'),
(95, 25, 'Functions'),
(96, 25, 'Variables'),
(97, 26, 'Specify a return type'),
(98, 26, 'Declare a variable'),
(99, 26, 'Indicate an empty function'),
(100, 26, 'Define a constant'),
(101, 27, '2.000000'),
(102, 27, '2.500000'),
(103, 27, 'Error'),
(104, 27, '2.5'),
(105, 28, '4'),
(106, 28, '0'),
(107, 28, '3'),
(108, 28, '5'),
(109, 29, 'HTTP DBMS'),
(110, 29, 'Relational DBMS'),
(111, 29, 'NoSQL DBMS'),
(112, 29, 'XML DBMS'),
(113, 30, 'A key from another table'),
(114, 30, 'A primary key from the same table'),
(115, 30, 'A unique key'),
(116, 30, 'A candidate key'),
(117, 31, 'Third Normal Form (3NF)'),
(118, 31, 'First Normal Form (1NF)'),
(119, 31, 'Second Normal Form (2NF)'),
(120, 31, 'Fourth Normal Form (4NF)');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_code` varchar(10) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `level` int(2) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `module_code`, `module_name`, `level`, `semester`) VALUES
(1, 'CMIS1113', 'Introduction to Computers and Operating Systems', 1, 1),
(2, 'CMIS1123', 'Computer Programming I', 1, 1),
(3, 'CMIS1212', 'Computer Programming II', 1, 2),
(4, 'CMIS2113', 'Object-oriented Programming', 2, 1),
(5, 'CMIS2123', 'Database Management Systems', 2, 1),
(6, 'CMIS2214', 'Data Structures & Analysis of Algorithms', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `progress_module`
--

CREATE TABLE `progress_module` (
  `progress_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progress_module`
--

INSERT INTO `progress_module` (`progress_id`, `module_id`, `student_id`) VALUES
(10, 1, 192153),
(11, 2, 192153),
(12, 3, 192153);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `q_title` varchar(255) NOT NULL,
  `q_body` varchar(500) DEFAULT NULL,
  `q_hint` varchar(255) DEFAULT NULL,
  `q_explanation` varchar(500) NOT NULL,
  `q_correct_answer` varchar(100) NOT NULL,
  `q_type` varchar(10) NOT NULL,
  `q_code` varchar(255) DEFAULT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `q_title`, `q_body`, `q_hint`, `q_explanation`, `q_correct_answer`, `q_type`, `q_code`, `module_id`) VALUES
(1, 'Which of the following software could assist someone who cannot use their hands for computer input ?', NULL, NULL, 'The software that could assist someone who cannot use their hands for computer input is (b) Speech recognition. Speech recognition software allows users to control a computer through voice commands, which can be a helpful alternative for individuals who have limited or no hand function. Therefore, the correct answer is (b) Speech recognition.', 'Speech recognition', 'mcq', NULL, 1),
(3, 'Choose the correct answer to fill the blank.', '_______ is a set of keywords, symbols, and a system of rules for constructing statements by which humans can communicate the instructions to be executed by a computer.', 'Think carefully.', 'A programming language is a set of keywords, symbols, and a system of rules for constructing statements by which humans can communicate the instructions to be executed by a computer.', 'A programming language', 'mcq', '', 2),
(4, 'Name the brain of the computer.', '', 'That is responsible for the performing calculations, executing instructions and processing data.', 'The Central Processing Unit (CPU) is referred to as the brain of the computer since it is responsible for the performing arithmetic, logic and other operations, executing instructions and processing data. It is a small silicon chip that contains complex integrated circuitry and has billions of tiny transistors which carry out the instructions needed to operate your computer applications. The CPU is powered by those transistors. The CPU is composed of Arithmetic and Logic Unit (ALU), Control Unit', 'CPU', 'mcq', '', 1),
(5, 'Name the brain of the computer.', '', 'That is responsible for the performing calculations, executing instructions and processing data.', 'The Central Processing Unit (CPU) is referred to as the brain of the computer since it is responsible for the performing arithmetic, logic and other operations, executing instructions and processing data. It is a small silicon chip that contains complex integrated circuitry and has billions of tiny transistors which carry out the instructions needed to operate your computer applications. The CPU is powered by those transistors. The CPU is composed of Arithmetic and Logic Unit (ALU), Control Unit', 'CPU', 'mcq', '', 1),
(6, 'Select the suitable missing parts of the code below to output “Hello World” in C language respectively.', '', '', '‘stdio’ stands for Standards Input and Output. In C programming stdio.h is a header file and the information required to incorporate input or output related functions is contained in this header. Also this header file contains the definition of the function printf. By printf function, everything contained in the double quotes will be printed to the screen. In this case, the output will be Hello World. Furthermore, #include is a pre-processor directory and the file that is specified between angle', '&lt;stdio.h&gt;, printf', 'mcq', '#include _________\r\nint main()\r\n{\r\n    ________(&quot;Hello World&quot;);\r\n    return 0;\r\n}', 2),
(7, 'Nibble is', '', '', 'The smallest unit of data on a binary computer is called as a ‘bit’ (sometime called as flag or digit). From there, bits can be collected into groups of four, eight, sixteen, thirty-two, sixty-four and those are called as ‘nibble’, ’byte’, ’word’, ’long word’ and ‘very long word’ respectively. A byte is the smallest addressable datum and the most important data structure used on the 80 x 86 microprocessor.', 'A collection of four bits', 'mcq', '', 1),
(8, 'Which one is the comment in C code?', '', '', 'Commenting is one of most important things in programming. The way of commenting is differ from one to another language. In C programming, single line comments start with two forward slashes (//) whereas, the multi-line comments in C start with a forward slash and asterisk (/*) and ends with asterisk and forward slash (*/). \r\nAccording to the multiple answers given in question, ‘&lt;!--This is a comment--&gt;’ is belongs to the commenting in html and ‘# This is a comment’ and ‘% This is a commen', '// This is a comment', 'mcq', '', 2),
(9, 'Correct way to create a variable ‘x’ with the floating number 3.2 in C code.', '', '', 'In this case, the variable named x is defined as a float and assigned the value of 3.2. In order to declare a variable, the keyword ‘float’ followed by the variable name and then assigned the value. i.e. float variable_name = value; \r\nSo, in this case the correct answer is float x = 3.2; where, x is the variable name and 3.2 is the value.\r\nIn c code statements should be end with the semicolon (;).', 'float x = 3.2;', 'mcq', '', 2),
(10, 'What is the correct way to call a function in C?', '', '', 'A function is a group of statements which is perform tasks together. There is at least one function (main()) in C code. The general form of a function definition in C programming is,\r\n	Return_type function_name (parameter list){\r\n		Body_of_the_function\r\n}.\r\nThe data type of the value the function returns is indicated by the return_type. Some functions carry out the required tasks without giving a value back. The keyword void is used in such a case. I.e. the void indicates that the function does ', 'myFunction();', 'mcq', '', 2),
(11, 'What is the correct way to create a class in C?', '', '', 'In contrast to other object-oriented languages like C++, C does not explicitly provide classes. Instead, structures—also known as &quot;structs&quot;—are implemented and perform a similar function to classes. These &#039;struct&#039; provide the structured grouping and handling of various data types. The general form of creating a struct as follows,\r\n	struct ClassName { \r\n};', 'None of the above', 'mcq', '', 2),
(12, 'Select the correct start writing a while loop in C.', '', '', 'In C programming language, the while Loop is an entry-controlled loop. While the specified condition remains true, this loop can be used to iterate a section of code.\r\nSyntax:	\r\n	while (test expression) {\r\n		// body consisting of multiple statements\r\n}', 'while (x &lt; y)', 'mcq', '', 2),
(13, 'Which of the following is a principle of OOP?', '', '', 'All three options (A, B, and C) are principles of OOP. Encapsulation is the concept of bundling data and methods that operate on that data into a single unit, often called a class. Inheritance allows a class (subclass) to inherit properties and behavior from another class (superclass). Polymorphism allows objects to be treated as instances of their parent class, promoting code flexibility and reusability.', 'All of the above', 'mcq', '', 4),
(14, 'Name the short-term memory that is lost when the computer is turned off?', '', '', 'RAM (Random Access Memory) cannot store permanent data because of its volatile. RAM is regarded as short-term memory since the data stored in is erased when the machine is powered off\r\nROM (Read Only Memory) is a non-volatile memory which store data in permanent. ROM is considered as the primary memory unit of the computer. The computer&#039;s instructions and processing power come from the processor, also referred to as the CPU.', 'RAM', 'mcq', '', 1),
(15, 'The first counting tool is,', '', 'It is invented in Babylonia in 2400 B.C.', 'An abacus is a mechanical device used to aid an individual in performing mathematical calculations. The abacus was invented in Babylonia in 2400 B.C. The abacus in the form we are most familiar with was first used in China in around 500 B.C. It used to perform basic arithmetic operations. \r\nSlide Rule is also a counting tool which is invented in 1622. It is used to for multiplication, division, roots, logarithms, Trigonometry and not normally used for addition or subtraction. Stepped Reckoner is', 'Abacus', 'mcq', '', 1),
(16, 'Inheritance is a mechanism in OOP that allows a class to:', '', '', 'Inheritance in OOP allows a class (subclass) to inherit properties and behaviors from another class (superclass). It promotes code reuse and helps to create a hierarchy of classes with common attributes and behaviors.', 'Inherit properties and behaviors from another class', 'mcq', '', 4),
(17, 'Which transmission medium allows for the highest transmission speed over long distances?', '', '', 'Fiber-optic cables enable the highest transmission speeds over long distances due to their ability to transmit data using light signals through glass fibers.', 'Fiber-optic cable', 'mcq', '', 1),
(18, 'What is the primary function of a modem in data transmission?', '', '', 'A modem modulates and demodulates digital signals into analog signals for transmission over analog lines and vice versa.', 'Modulating digital signals into analog signals for transmission over analog lines.', 'mcq', '', 1),
(19, 'What does TCP/IP stand for in the context of computer networks?', '', '', 'TCP/IP stands for Transmission Control Protocol/Internet Protocol, which are fundamental protocols for communication on the internet. The main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packets a', 'Transmission Control Protocol/Internet Protocol', 'mcq', '', 1),
(20, 'What does TCP/IP stand for in the context of computer networks?', '', '', 'TCP/IP stands for Transmission Control Protocol/Internet Protocol, which are fundamental protocols for communication on the internet. The main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packets a', 'Transmission Control Protocol/Internet Protocol', 'mcq', '', 1),
(21, 'What does OOP stand for?', '', '', 'OOP stands for Object-Oriented Programming, a programming paradigm that focuses on modeling software as objects that have attributes and behaviors.', 'Object-Oriented Programming', 'mcq', '', 4),
(22, 'Which OOP principle promotes code reusability and extensibility?', '', 'Think about the principle that involves deriving properties from existing classes.', 'Inheritance allows a class to inherit properties and behaviors from another class, promoting code reusability and extensibility.', 'Inheritance', 'mcq', '', 4),
(23, 'In OOP, what does the term &quot;polymorphism&quot; mean?', '', 'No hint for this.', 'Polymorphism in OOP refers to the ability of a class to have multiple forms through method overloading or method overriding.', 'Many forms', 'mcq', '', 4),
(24, 'What is the function of the scanf() function in C?', '', '', 'The scanf() function in C is used to read formatted input from the standard input (keyboard or other sources) into variables.', 'Read formatted input', 'mcq', '', 1),
(25, 'In OOP, a class is a blueprint for creating:', '', 'Consider what a class helps you create.', 'A class in OOP serves as a blueprint for creating objects, which are instances of that class.', 'Objects', 'mcq', '', 4),
(26, 'What is the purpose of the void keyword in C?', '', '', 'In C language void can be used as a return type or as a parameter to a function. When used as function return type, it means that function does not return any value. When used as function parameter, it means that function does not accept any arguments.', 'Specify a return type', 'mcq', '', 2),
(27, 'What will be the output of the following code?', '', '', 'The division a/b is performed using integer division since both operands are integers. Hence, the result is 2, which is then stored in a float variable.', '2.000000', 'mcq', '#include &lt;stdio.h&gt;\r\n\r\nint main() {\r\n    int a = 5, b = 2;\r\n    float result = a / b;\r\n    printf(&quot;%f&quot;, result);\r\n\r\n    return 0;\r\n}', 2),
(28, 'What will be the output of the following code?', '', '', '&#039;arr[3]&#039; means accessing the element at index 3 of the array arr, which is 4. Arrays in C are indexed starting at 0. The first element of the array above is arr[0]. The index to the last value in the array is the array size minus one. According to the given question,\r\narr[0] = 1\r\narr[1] = 2\r\narr[2] = 3\r\narr[3] = 4\r\narr[4] = 5', '4', 'mcq', '#include &lt;stdio.h&gt;\r\n\r\nint main() {\r\n    int arr[] = {1, 2, 3, 4, 5};\r\n    printf(&quot;%d&quot;, arr[3]);\r\n\r\n    return 0;\r\n}', 2),
(29, 'Which of the following is not a type of database management system?', '', '', 'HTTP (HyperText Transfer Protocol) is a protocol used for transferring data over the web, not a type of DBMS.', 'HTTP DBMS', 'mcq', '', 5),
(30, 'In a relational database, a foreign key refers to:', '', 'Pay attention to the relationships between tables in a relational database.', 'A foreign key is a field in a relational table that refers to the primary key in another table.', 'A key from another table', 'mcq', '', 5),
(31, 'Which normal form deals with partial dependencies?', '', 'Review the concepts of normal forms and their specific characteristics.', '3NF deals with partial dependencies, where no non-prime attribute is transitively dependent on the primary key.', 'Third Normal Form (3NF)', 'mcq', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `q_kit`
--

CREATE TABLE `q_kit` (
  `q_kit_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `q_kit`
--

INSERT INTO `q_kit` (`q_kit_id`, `module_id`, `student_id`) VALUES
(1, 1, 192153),
(3, 1, 192153),
(4, 2, 192153),
(5, 1, 192153);

-- --------------------------------------------------------

--
-- Table structure for table `q_kit_questions`
--

CREATE TABLE `q_kit_questions` (
  `q_kit_questions_id` int(11) NOT NULL,
  `q_kit_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `q_kit_questions`
--

INSERT INTO `q_kit_questions` (`q_kit_questions_id`, `q_kit_id`, `q_id`) VALUES
(1, 1, 4),
(2, 1, 7),
(3, 1, 14),
(4, 1, 18),
(5, 1, 24),
(6, 1, 17),
(7, 1, 19),
(8, 1, 14),
(9, 1, 7),
(10, 1, 20),
(11, 3, 4),
(12, 3, 7),
(13, 3, 14),
(14, 3, 18),
(15, 3, 24),
(16, 3, 17),
(17, 3, 19),
(18, 3, 14),
(19, 3, 7),
(20, 3, 20),
(30, 4, 3),
(31, 4, 8),
(32, 4, 10),
(33, 4, 28),
(34, 4, 3),
(35, 4, 11),
(36, 4, 11),
(37, 4, 10),
(38, 4, 27),
(39, 4, 3),
(40, 5, 20),
(41, 5, 17),
(42, 5, 14),
(43, 5, 17),
(44, 5, 20),
(45, 5, 19),
(46, 5, 7),
(47, 5, 18),
(48, 5, 14),
(49, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`student_id`, `student_name`, `student_password`) VALUES
(192153, 'W.M.D.I. Wijesundara', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `progress_module`
--
ALTER TABLE `progress_module`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `q_kit`
--
ALTER TABLE `q_kit`
  ADD PRIMARY KEY (`q_kit_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `q_kit_questions`
--
ALTER TABLE `q_kit_questions`
  ADD PRIMARY KEY (`q_kit_questions_id`),
  ADD KEY `q_kit_id` (`q_kit_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `progress_module`
--
ALTER TABLE `progress_module`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `q_kit`
--
ALTER TABLE `q_kit`
  MODIFY `q_kit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `q_kit_questions`
--
ALTER TABLE `q_kit_questions`
  MODIFY `q_kit_questions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`);

--
-- Constraints for table `progress_module`
--
ALTER TABLE `progress_module`
  ADD CONSTRAINT `progress_module_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_table` (`student_id`),
  ADD CONSTRAINT `progress_module_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Constraints for table `q_kit`
--
ALTER TABLE `q_kit`
  ADD CONSTRAINT `q_kit_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`),
  ADD CONSTRAINT `q_kit_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_table` (`student_id`);

--
-- Constraints for table `q_kit_questions`
--
ALTER TABLE `q_kit_questions`
  ADD CONSTRAINT `q_kit_questions_ibfk_1` FOREIGN KEY (`q_kit_id`) REFERENCES `q_kit` (`q_kit_id`),
  ADD CONSTRAINT `q_kit_questions_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
