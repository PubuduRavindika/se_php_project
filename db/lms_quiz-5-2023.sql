-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 08:14 PM
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
(120, 31, 'Fourth Normal Form (4NF)'),
(121, 32, 'Stack'),
(122, 32, 'Queue'),
(123, 32, 'Tree'),
(124, 32, 'Linked List'),
(129, 34, 'Stack overflow'),
(130, 34, 'Limited memory'),
(131, 34, 'Slow execution'),
(132, 34, 'Lack of flexibility'),
(133, 35, 'Stack'),
(134, 35, 'Queue'),
(135, 35, 'Linked List'),
(136, 35, 'Array'),
(137, 36, 'Use of pointers'),
(138, 36, 'Object oriented'),
(139, 36, 'Dynamic'),
(140, 36, 'Architectural neural'),
(141, 37, '168'),
(142, 37, '288'),
(143, 37, '169'),
(144, 37, '2688'),
(145, 38, 'Singly linked lists use less memory'),
(146, 38, 'Arrays use less memory'),
(147, 38, 'Both use the same amount of memory'),
(148, 38, 'Memory utilization is not related to data structures'),
(149, 39, '168'),
(150, 39, '288'),
(151, 39, '169'),
(152, 39, '2688'),
(153, 40, '168'),
(154, 40, '288'),
(155, 40, '169'),
(156, 40, '2688'),
(157, 41, 'Preorder'),
(158, 41, 'Inorder'),
(159, 41, 'Postorder'),
(160, 41, 'Level order'),
(161, 42, 'static final int age = 10;'),
(162, 42, 'constant int age = 10;'),
(163, 42, 'final int age = 10;'),
(164, 42, 'const int age = 10;'),
(165, 43, 'Random access'),
(166, 43, 'Dynamic size'),
(167, 43, 'Ease of deletion'),
(168, 43, 'No limitation on data types'),
(169, 44, 'Searching in a sorted array'),
(170, 44, 'Sorting elements'),
(171, 44, 'Searching in a linked list'),
(172, 44, 'Inserting elements in a stack'),
(173, 45, 'Dijkstra&#039;s Algorithm'),
(174, 45, 'Breadth-First Search (BFS)'),
(175, 45, 'Depth-First Search (DFS)'),
(176, 45, 'Bellman-Ford Algorithm'),
(177, 46, 'Heap'),
(178, 46, 'Queue'),
(179, 46, 'Stack'),
(180, 46, 'Linked List'),
(181, 47, 'NAND gate and NOR gate'),
(182, 47, 'OR gate and AND gate'),
(183, 47, 'AND gate and XOR gate'),
(184, 47, 'NOT gate and AND gate'),
(185, 48, 'Star'),
(186, 48, 'Mesh'),
(187, 48, 'Bus'),
(188, 48, 'Ring'),
(189, 49, 'Abacus'),
(190, 49, 'Stepped Reckoner'),
(191, 49, 'Slide Rule'),
(192, 49, 'Tally Sticks'),
(193, 50, 'RAM'),
(194, 50, 'ROM'),
(195, 50, 'Processor'),
(196, 50, 'Hardware'),
(197, 51, 'Transmission Control Protocol/Internet Protocol'),
(198, 51, 'Transfer Control Protocol/Internet Protocol'),
(199, 51, 'Total Control Protocol/Internet Protocol'),
(200, 51, 'Terminal Connection Protocol/Internet Protocol'),
(201, 52, 'Specify a return type'),
(202, 52, 'Declare a variable'),
(203, 52, 'Indicate an empty function'),
(204, 52, 'Define a constant'),
(205, 53, 'Heap'),
(206, 53, 'Queue'),
(207, 53, 'Stack'),
(208, 53, 'Linked List'),
(209, 54, 'Primary key'),
(210, 54, 'Sort key'),
(211, 54, 'Composite key'),
(212, 54, 'Foreign key'),
(213, 55, 'Schema'),
(214, 55, 'Index'),
(215, 55, 'View'),
(216, 55, 'Trigger'),
(217, 56, 'WHERE'),
(218, 56, 'ORDER BY'),
(219, 56, 'GROUP BY'),
(220, 56, 'HAVING'),
(221, 57, 'Data redundancy'),
(222, 57, 'Indexing'),
(223, 57, 'Schema complexity'),
(224, 57, 'Query optimization'),
(225, 58, 'Transactions'),
(226, 58, 'Schemas'),
(227, 58, 'Indexing'),
(228, 58, 'Constraints'),
(229, 59, 'NoSQL'),
(230, 59, 'Hierarchical'),
(231, 59, 'Network'),
(232, 59, 'Relational'),
(233, 60, 'Combine rows from multiple tables'),
(234, 60, 'Delete records from multiple tables'),
(235, 60, 'Sort records in ascending order'),
(236, 60, 'Update records in multiple tables'),
(237, 61, 'Relational'),
(238, 61, 'Hierarchical'),
(239, 61, 'Network'),
(240, 61, 'NoSQL'),
(241, 62, 'Attributes'),
(242, 62, 'Variables'),
(243, 62, 'Functions'),
(244, 62, 'Constants'),
(245, 63, 'Declared'),
(246, 63, 'Parent'),
(247, 63, 'Actual'),
(248, 63, 'Derived'),
(249, 64, 'Implementation'),
(250, 64, 'Specific'),
(251, 64, 'Concrete'),
(252, 64, 'Detailed'),
(253, 65, 'Access modifiers'),
(254, 65, 'Abstract classes'),
(255, 65, 'Protected classes'),
(256, 65, 'Private classes'),
(257, 66, 'Singleton pattern'),
(258, 66, 'Polymorphism'),
(259, 66, 'Abstraction'),
(260, 66, 'Encapsulation'),
(261, 67, 'Access modifiers'),
(262, 67, 'Abstract classes'),
(263, 67, 'Protected classes'),
(264, 67, 'Private classes'),
(265, 68, 'Searching'),
(266, 68, 'Sorting'),
(267, 68, 'Merging'),
(268, 68, 'Indexing');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_table`
--

CREATE TABLE `lecturer_table` (
  `lecturer_id` int(11) NOT NULL,
  `lecturer_name` varchar(100) NOT NULL,
  `lecturer_email` varchar(100) NOT NULL,
  `lecturer_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lecturer_table`
--

INSERT INTO `lecturer_table` (`lecturer_id`, `lecturer_name`, `lecturer_email`, `lecturer_password`) VALUES
(1, 'Lecture Name1', 'lecturer1@gmail.com', '123456'),
(2, 'Lecture Name2', 'lecturer2@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_code` varchar(10) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `level` int(2) NOT NULL,
  `semester` int(2) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `module_code`, `module_name`, `level`, `semester`, `lecturer_id`) VALUES
(1, 'CMIS1113', 'Introduction to Computers and Operating Systems', 1, 1, 1),
(2, 'CMIS1123', 'Computer Programming I', 1, 1, 1),
(3, 'CMIS1212', 'Computer Programming II', 1, 2, 1),
(4, 'CMIS2113', 'Object-oriented Programming', 2, 1, 2),
(5, 'CMIS2123', 'Database Management Systems', 2, 1, 2),
(6, 'CMIS2214', 'Data Structures & Analysis of Algorithms', 2, 2, 2);

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
(12, 3, 192153),
(13, 1, 192116),
(14, 2, 192116),
(15, 1, 192054),
(16, 4, 192141),
(17, 1, 192141),
(18, 4, 192153);

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
  `module_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `q_title`, `q_body`, `q_hint`, `q_explanation`, `q_correct_answer`, `q_type`, `q_code`, `module_id`, `lecturer_id`) VALUES
(1, 'Which of the following software could assist someone who cannot use their hands for computer input ?', NULL, NULL, 'The software that could assist someone who cannot use their hands for computer input is (b) Speech recognition. Speech recognition software allows users to control a computer through voice commands, which can be a helpful alternative for individuals who have limited or no hand function. Therefore, the correct answer is (b) Speech recognition.', 'Speech recognition', 'mcq', NULL, 1, 1),
(3, 'Choose the correct answer to fill the blank.', '_______ is a set of keywords, symbols, and a system of rules for constructing statements by which humans can communicate the instructions to be executed by a computer.', 'Think carefully.', 'A programming language is a set of keywords, symbols, and a system of rules for constructing statements by which humans can communicate the instructions to be executed by a computer.', 'A programming language', 'mcq', '', 2, 1),
(4, 'Name the brain of the computer.', '', 'That is responsible for the performing calculations, executing instructions and processing data.', 'The Central Processing Unit (CPU) is referred to as the brain of the computer since it is responsible for the performing arithmetic, logic and other operations, executing instructions and processing data. It is a small silicon chip that contains complex integrated circuitry and has billions of tiny transistors which carry out the instructions needed to operate your computer applications. The CPU is powered by those transistors. The CPU is composed of Arithmetic and Logic Unit (ALU), Control Unit', 'CPU', 'mcq', '', 1, 1),
(5, 'Name the brain of the computer.', '', 'That is responsible for the performing calculations, executing instructions and processing data.', 'The Central Processing Unit (CPU) is referred to as the brain of the computer since it is responsible for the performing arithmetic, logic and other operations, executing instructions and processing data. It is a small silicon chip that contains complex integrated circuitry and has billions of tiny transistors which carry out the instructions needed to operate your computer applications. The CPU is powered by those transistors. The CPU is composed of Arithmetic and Logic Unit (ALU), Control Unit', 'CPU', 'mcq', '', 1, 1),
(6, 'Select the suitable missing parts of the code below to output “Hello World” in C language respectively.', '', '', '‘stdio’ stands for Standards Input and Output. In C programming stdio.h is a header file and the information required to incorporate input or output related functions is contained in this header. Also this header file contains the definition of the function printf. By printf function, everything contained in the double quotes will be printed to the screen. In this case, the output will be Hello World. Furthermore, #include is a pre-processor directory and the file that is specified between angle', '&lt;stdio.h&gt;, printf', 'mcq', '#include _________\r\nint main()\r\n{\r\n    ________(&quot;Hello World&quot;);\r\n    return 0;\r\n}', 2, 1),
(7, 'Nibble is', '', '', 'The smallest unit of data on a binary computer is called as a ‘bit’ (sometime called as flag or digit). From there, bits can be collected into groups of four, eight, sixteen, thirty-two, sixty-four and those are called as ‘nibble’, ’byte’, ’word’, ’long word’ and ‘very long word’ respectively. A byte is the smallest addressable datum and the most important data structure used on the 80 x 86 microprocessor.', 'A collection of four bits', 'mcq', '', 1, 1),
(8, 'Which one is the comment in C code?', '', '', 'Commenting is one of most important things in programming. The way of commenting is differ from one to another language. In C programming, single line comments start with two forward slashes (//) whereas, the multi-line comments in C start with a forward slash and asterisk (/*) and ends with asterisk and forward slash (*/). \r\nAccording to the multiple answers given in question, ‘&lt;!--This is a comment--&gt;’ is belongs to the commenting in html and ‘# This is a comment’ and ‘% This is a commen', '// This is a comment', 'mcq', '', 2, 1),
(9, 'Correct way to create a variable ‘x’ with the floating number 3.2 in C code.', '', '', 'In this case, the variable named x is defined as a float and assigned the value of 3.2. In order to declare a variable, the keyword ‘float’ followed by the variable name and then assigned the value. i.e. float variable_name = value; \r\nSo, in this case the correct answer is float x = 3.2; where, x is the variable name and 3.2 is the value.\r\nIn c code statements should be end with the semicolon (;).', 'float x = 3.2;', 'mcq', '', 2, 1),
(10, 'What is the correct way to call a function in C?', '', '', 'A function is a group of statements which is perform tasks together. There is at least one function (main()) in C code. The general form of a function definition in C programming is,\r\n	Return_type function_name (parameter list){\r\n		Body_of_the_function\r\n}.\r\nThe data type of the value the function returns is indicated by the return_type. Some functions carry out the required tasks without giving a value back. The keyword void is used in such a case. I.e. the void indicates that the function does ', 'myFunction();', 'mcq', '', 2, 1),
(11, 'What is the correct way to create a class in C?', '', '', 'In contrast to other object-oriented languages like C++, C does not explicitly provide classes. Instead, structures—also known as &quot;structs&quot;—are implemented and perform a similar function to classes. These &#039;struct&#039; provide the structured grouping and handling of various data types. The general form of creating a struct as follows,\r\n	struct ClassName { \r\n};', 'None of the above', 'mcq', '', 2, 1),
(12, 'Select the correct start writing a while loop in C.', '', '', 'In C programming language, the while Loop is an entry-controlled loop. While the specified condition remains true, this loop can be used to iterate a section of code.\r\nSyntax:	\r\n	while (test expression) {\r\n		// body consisting of multiple statements\r\n}', 'while (x &lt; y)', 'mcq', '', 2, 1),
(13, 'Which of the following is a principle of OOP?', '', '', 'All three options (A, B, and C) are principles of OOP. Encapsulation is the concept of bundling data and methods that operate on that data into a single unit, often called a class. Inheritance allows a class (subclass) to inherit properties and behavior from another class (superclass). Polymorphism allows objects to be treated as instances of their parent class, promoting code flexibility and reusability.', 'All of the above', 'mcq', '', 4, 1),
(14, 'Name the short-term memory that is lost when the computer is turned off?', '', '', 'RAM (Random Access Memory) cannot store permanent data because of its volatile. RAM is regarded as short-term memory since the data stored in is erased when the machine is powered off\r\nROM (Read Only Memory) is a non-volatile memory which store data in permanent. ROM is considered as the primary memory unit of the computer. The computer&#039;s instructions and processing power come from the processor, also referred to as the CPU.', 'RAM', 'mcq', '', 1, 2),
(15, 'The first counting tool is,', '', 'It is invented in Babylonia in 2400 B.C.', 'An abacus is a mechanical device used to aid an individual in performing mathematical calculations. The abacus was invented in Babylonia in 2400 B.C. The abacus in the form we are most familiar with was first used in China in around 500 B.C. It used to perform basic arithmetic operations. \r\nSlide Rule is also a counting tool which is invented in 1622. It is used to for multiplication, division, roots, logarithms, Trigonometry and not normally used for addition or subtraction. Stepped Reckoner is', 'Abacus', 'mcq', '', 1, 2),
(16, 'Inheritance is a mechanism in OOP that allows a class to:', '', '', 'Inheritance in OOP allows a class (subclass) to inherit properties and behaviors from another class (superclass). It promotes code reuse and helps to create a hierarchy of classes with common attributes and behaviors.', 'Inherit properties and behaviors from another class', 'mcq', '', 4, 2),
(17, 'Which transmission medium allows for the highest transmission speed over long distances?', '', '', 'Fiber-optic cables enable the highest transmission speeds over long distances due to their ability to transmit data using light signals through glass fibers.', 'Fiber-optic cable', 'mcq', '', 1, 2),
(18, 'What is the primary function of a modem in data transmission?', '', '', 'A modem modulates and demodulates digital signals into analog signals for transmission over analog lines and vice versa.', 'Modulating digital signals into analog signals for transmission over analog lines.', 'mcq', '', 1, 2),
(19, 'What does TCP/IP stand for in the context of computer networks?', '', '', 'TCP/IP stands for Transmission Control Protocol/Internet Protocol, which are fundamental protocols for communication on the internet. The main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packets a', 'Transmission Control Protocol/Internet Protocol', 'mcq', '', 1, 2),
(20, 'What does TCP/IP stand for in the context of computer networks?', '', '', 'TCP/IP stands for Transmission Control Protocol/Internet Protocol, which are fundamental protocols for communication on the internet. The main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packets a', 'Transmission Control Protocol/Internet Protocol', 'mcq', '', 1, 2),
(21, 'What does OOP stand for?', '', '', 'OOP stands for Object-Oriented Programming, a programming paradigm that focuses on modeling software as objects that have attributes and behaviors.', 'Object-Oriented Programming', 'mcq', '', 4, 2),
(22, 'Which OOP principle promotes code reusability and extensibility?', '', 'Think about the principle that involves deriving properties from existing classes.', 'Inheritance allows a class to inherit properties and behaviors from another class, promoting code reusability and extensibility.', 'Inheritance', 'mcq', '', 4, 2),
(23, 'In OOP, what does the term &quot;polymorphism&quot; mean?', '', 'No hint for this.', 'Polymorphism in OOP refers to the ability of a class to have multiple forms through method overloading or method overriding.', 'Many forms', 'mcq', '', 4, 2),
(24, 'What is the function of the scanf() function in C?', '', '', 'The scanf() function in C is used to read formatted input from the standard input (keyboard or other sources) into variables.', 'Read formatted input', 'mcq', '', 1, 2),
(25, 'In OOP, a class is a blueprint for creating:', '', 'Consider what a class helps you create.', 'A class in OOP serves as a blueprint for creating objects, which are instances of that class.', 'Objects', 'mcq', '', 4, 2),
(26, 'What is the purpose of the void keyword in C?', '', '', 'In C language void can be used as a return type or as a parameter to a function. When used as function return type, it means that function does not return any value. When used as function parameter, it means that function does not accept any arguments.', 'Specify a return type', 'mcq', '', 2, 2),
(27, 'What will be the output of the following code?', '', '', 'The division a/b is performed using integer division since both operands are integers. Hence, the result is 2, which is then stored in a float variable.', '2.000000', 'mcq', '#include &lt;stdio.h&gt;\r\n\r\nint main() {\r\n    int a = 5, b = 2;\r\n    float result = a / b;\r\n    printf(&quot;%f&quot;, result);\r\n\r\n    return 0;\r\n}', 2, 2),
(28, 'What will be the output of the following code?', '', '', '&#039;arr[3]&#039; means accessing the element at index 3 of the array arr, which is 4. Arrays in C are indexed starting at 0. The first element of the array above is arr[0]. The index to the last value in the array is the array size minus one. According to the given question,\r\narr[0] = 1\r\narr[1] = 2\r\narr[2] = 3\r\narr[3] = 4\r\narr[4] = 5', '4', 'mcq', '#include &lt;stdio.h&gt;\r\n\r\nint main() {\r\n    int arr[] = {1, 2, 3, 4, 5};\r\n    printf(&quot;%d&quot;, arr[3]);\r\n\r\n    return 0;\r\n}', 2, 2),
(29, 'Which of the following is not a type of database management system?', '', '', 'HTTP (HyperText Transfer Protocol) is a protocol used for transferring data over the web, not a type of DBMS.', 'HTTP DBMS', 'mcq', '', 5, 2),
(30, 'In a relational database, a foreign key refers to:', '', 'Pay attention to the relationships between tables in a relational database.', 'A foreign key is a field in a relational table that refers to the primary key in another table.', 'A key from another table', 'mcq', '', 5, 0),
(31, 'Which normal form deals with partial dependencies?', '', 'Review the concepts of normal forms and their specific characteristics.', '3NF deals with partial dependencies, where no non-prime attribute is transitively dependent on the primary key.', 'Third Normal Form (3NF)', 'mcq', '', 5, 0),
(32, 'What data structure follows the Last In, First Out (LIFO) principle?', '', 'Think of how items are retrieved in real-life scenarios.', 'In a stack, the last element added is the first one to be removed (LIFO). It is often compared to a stack of plates, where the last plate placed on top is the first one to be removed.', 'Stack', 'mcq', '', 6, 2),
(34, 'What is a potential issue with using a stack to implement recursion?', '', 'Consider the relationship between recursion and the stack.', 'Recursion relies on the call stack to keep track of function calls. If the recursion depth becomes too large, it can lead to a stack overflow, causing the program to crash. Managing recursion depth is crucial to avoid this issue.', 'Stack overflow', 'mcq', '', 6, 2),
(35, 'Which data structure is often used to implement undo functionality in applications?', '', 'Think about the requirements of undo functionality.', 'A stack is well-suited for implementing undo functionality because it follows the Last-In-First-Out (LIFO) principle. Each action that can be undone is pushed onto the stack, and undoing an action involves popping the top element from the stack.', 'Stack', 'mcq', '', 6, 2),
(36, 'Select the incorrect java feature.', '', '', 'Pointers are a feature associated with the C programming language. They are responsible for providing the memory address in a situation where the programmer directly stores the data. But unfortunately, you won&#039;t find any pointers in Java.', 'Use of pointers', 'mcq', '', 3, 1),
(37, 'What is the value of the hexadecimal number A9 in decimal?', '', '', 'To convert hexadecimal into a decimal number system, multiply each digit with the powers of 16 starting from units place of the number.\r\nThe hexadecimal numbers system includes 10 decimal numbers and extra six symbols. English alphabets such as A, B, C, D, E, and F are used to represent the value greater than 9 in hexadecimal numeral systems.\r\n\r\nThe 16 digits in the hexadecimal number system are: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, where A is 10, B is 11, C is 12, D is 13, E is 14, F', '168', 'mcq', '', 1, 1),
(38, 'Which of the following statements is true about the memory utilization in a singly linked list compared to an array?', '', 'Consider the memory utilization characteristics', 'Singly linked lists use less memory compared to arrays because they can dynamically allocate memory for each node, avoiding the need for a fixed-size contiguous block of memory as in arrays. This dynamic allocation allows efficient utilization of memory based on the actual number of elements in the list.', 'Singly linked lists use less memory', 'mcq', '', 6, 2),
(39, 'What is the value of the hexadecimal number A9 in decimal?', '', '', 'To convert hexadecimal into a decimal number system, multiply each digit with the powers of 16 starting from units place of the number.\r\nThe hexadecimal numbers system includes 10 decimal numbers and extra six symbols. English alphabets such as A, B, C, D, E, and F are used to represent the value greater than 9 in hexadecimal numeral systems.\r\n\r\nThe 16 digits in the hexadecimal number system are: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, where A is 10, B is 11, C is 12, D is 13, E is 14, F', '168', 'mcq', '', 1, 1),
(40, 'What is the value of the hexadecimal number A9 in decimal?', '', '', 'To convert hexadecimal into a decimal number system, multiply each digit with the powers of 16 starting from units place of the number.\r\nThe hexadecimal numbers system includes 10 decimal numbers and extra six symbols. English alphabets such as A, B, C, D, E, and F are used to represent the value greater than 9 in hexadecimal numeral systems.\r\n\r\nThe 16 digits in the hexadecimal number system are: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, where A is 10, B is 11, C is 12, D is 13, E is 14, F', '168', 'mcq', '', 1, 1),
(41, 'Which traversal visits the root node between its left and right subtrees?', '', 'Think about the order in which nodes are visited during different traversals.', 'In preorder traversal, the root node is visited before its left and right subtrees. The sequence is Root - Left - Right.', 'Preorder', 'mcq', '', 6, 2),
(42, 'Choose the correct way to declare a constant in JAVA.', '', '', 'In Java, constants are declared using the &#039;static final&#039; keywords. The syntax to declare a constant is as follows.\r\n\r\nstatic final data_type variable_name = value;\r\n\r\nIn the question,\r\nint is the data_type, age is the variable_name and 10 is the assigned value.', 'static final int age = 10;', 'mcq', '', 3, 1),
(43, 'What is the main advantage of using an array over other data structures?', '', 'Consider the characteristics that distinguish arrays from other data structures.', 'Arrays provide constant-time random access to elements based on their indices, making it efficient to retrieve or modify elements directly.', 'Random access', 'mcq', '', 6, 2),
(44, 'What is the purpose of the binary search algorithm?', '', 'Focus on the characteristics of binary search.', 'Binary search is an efficient algorithm for finding a target value within a sorted array. It repeatedly divides the search range in half, narrowing down the possible locations of the target.', 'Searching in a sorted array', 'mcq', '', 6, 2),
(45, 'Which algorithm is used to find the shortest path in a weighted graph?', '', 'Consider algorithms specifically designed for finding the shortest path.', 'Dijkstra&#039;s Algorithm is used to find the shortest path in a weighted graph by iteratively selecting the vertex with the smallest tentative distance.', 'Dijkstra&#039;s Algorithm', 'mcq', '', 6, 2),
(46, 'Which data structure is best suited for implementing a priority queue?', '', 'Think about the requirements of a priority queue.', 'Heaps are often used to implement priority queues due to their ability to efficiently maintain elements in order based on priority.', 'Heap', 'mcq', '', 6, 2),
(47, 'Which gates are known as a universal gates?', '', '', 'A universal gate can implement any Boolean function without need to use any other gate type. NAND and NOR gates are called universal gates because they can perform all the three basic logic functions OR, AND and NOT. For an example, to make a NOT gate, connect the two inputs of NAND gate. Now that you have created a NOT gate, use that gate at the output of another NAND gate and you have AND gate.', 'NAND gate and NOR gate', 'mcq', '', 1, 1),
(48, 'In which network architecture are all computers connected to a central point?', '', '', 'In a star network, the nodes of the network is connected to a central node with a point-to-point link. All data that is transmitted between nodes in the network is transmitted to this central node. Central node is usually some type of device that then retransmits the data to some or all of the other nodes in the network.', 'Star', 'mcq', '', 1, 1),
(49, 'The first counting tool is,', '', 'It is invented in Babylonia in 2400 B.C.', 'An abacus is a mechanical device used to aid an individual in performing mathematical calculations. The abacus was invented in Babylonia in 2400 B.C. The abacus in the form we are most familiar with was first used in China in around 500 B.C. It used to perform basic arithmetic operations. \r\nSlide Rule is also a counting tool which is invented in 1622. It is used to for multiplication, division, roots, logarithms, Trigonometry and not normally used for addition or subtraction. Stepped Reckoner is', 'Abacus', 'mcq', '', 1, 1),
(50, 'Name the short-term memory that is lost when the computer is turned off?', '', '', 'RAM (Random Access Memory) cannot store permanent data because of its volatile. RAM is regarded as short-term memory since the data stored in is erased when the machine is powered off\r\nROM (Read Only Memory) is a non-volatile memory which store data in permanent. ROM is considered as the primary memory unit of the computer. The computer&#039;s instructions and processing power come from the processor, also referred to as the CPU.', 'RAM', 'mcq', '', 1, 1),
(51, 'What does TCP/IP stand for in the context of computer networks?', '', '', 'TCP/IP stands for Transmission Control Protocol/ Internet Protocol, which are fundamental protocols for communication on the internet.\r\n\r\nThe main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packe', 'Transmission Control Protocol/Internet Protocol', 'mcq', '', 1, 1),
(52, 'What is the purpose of the void keyword in C?', '', '', 'In C language void can be used as a return type or as a parameter to a function. When used as function return type, it means that function does not return any value. When used as function parameter, it means that function does not accept any arguments.', 'Specify a return type', 'mcq', '', 2, 1),
(53, 'Which data structure is best suited for implementing a priority queue?', '', 'Think about the requirements of a priority queue.', 'Heaps are often used to implement priority queues due to their ability to efficiently maintain elements in order based on priority.', 'Heap', 'mcq', '', 6, 2),
(54, 'In a relational database, a __________ is a unique identifier for a record in a table.', '', 'Too easy.', 'The primary key uniquely identifies each record in a table, ensuring that no two records have the same identifier. It is fundamental for maintaining data integrity.', 'Primary key', 'mcq', '', 5, 2),
(55, 'A database __________ defines the structure of a database, including tables, fields, and relationships.', '', 'It specifies the organization of data within a database', 'A database schema defines the structure of a database, providing a blueprint for tables, fields, relationships, and constraints.', 'Schema', 'mcq', '', 5, 2),
(56, 'The SQL __________ clause is used to filter the results of a SELECT statement based on specified conditions.', '', 'It is used to set conditions for data retrieval.', 'The SQL WHERE clause is used to filter the results of a SELECT statement based on specified conditions, allowing for precise data retrieval.', 'WHERE', 'mcq', '', 5, 2),
(57, 'Normalization in database design reduces __________ and dependency, leading to a simplified database structure.', '', '', 'Normalization in database design reduces data redundancy by organizing data efficiently, minimizing repetition and ensuring each piece of data is stored in only one place.', 'Data redundancy', 'mcq', '', 5, 2),
(58, 'ACID, which stands for Atomicity, Consistency, Isolation, and Durability, ensures the reliability and integrity of database __________.', '', 'It involves grouping one or more operations into a single unit.', 'ACID properties ensure the reliability and integrity of database transactions by maintaining atomicity, consistency, isolation, and durability of grouped operations.', 'Transactions', 'mcq', '', 5, 2),
(59, 'A non-relational database model like MongoDB is categorized as a __________ database.', '', 'It represents a departure from traditional relational models.', 'MongoDB is a NoSQL database, indicating a departure from the traditional relational model. NoSQL databases are designed to handle unstructured and varied data.', 'NoSQL', 'mcq', '', 5, 2),
(60, 'What is the purpose of the SQL JOIN operation in a relational database?', '', 'Consider the nature of the operation when combining data.', 'The SQL JOIN operation is used to combine rows from two or more tables based on a related column, enabling the retrieval of related data from multiple tables.', 'Combine rows from multiple tables', 'mcq', '', 5, 2),
(61, 'Which type of database model uses a schema to define the structure of data and relationships?', '', 'Think about the organization of data in different database models.', 'In a relational database model, data is organized into tables with a predefined schema, specifying the structure, relationships, and constraints of the data.', 'Relational', 'mcq', '', 5, 2),
(62, 'In OOP, encapsulation is the concept of bundling __________ and methods that operate on the data into a single unit called a class.', '', 'It involves grouping data and the methods that operate on the data.', 'Encapsulation in OOP involves bundling attributes (variables) and methods (functions) into a single unit called a class. This helps in organizing and controlling access to the data.', 'Attributes', 'mcq', '', 4, 2),
(63, 'Polymorphism in OOP allows objects to be treated as instances of their __________ type, providing flexibility and extensibility in code.', '', 'It involves multiple forms or types.', 'Polymorphism allows objects to be treated as instances of their declared type, providing flexibility in code as objects can take multiple forms or types.', 'Declared', 'mcq', '', 4, 2),
(64, 'Abstraction in OOP is the process of simplifying complex systems by modeling classes based on __________ characteristics and ignoring unnecessary details.', '', 'Focus on simplifying complex systems through modeling.', 'Abstraction in OOP involves simplifying complex systems by modeling classes based on their essential characteristics and ignoring unnecessary implementation details.', 'Implementation', 'mcq', '', 4, 2),
(65, 'Encapsulation not only bundles data and methods but also restricts access to certain data by using __________ and public access specifiers.', '', 'Consider how access to data can be restricted.', 'Encapsulation uses access modifiers (public, private, protected) to control the visibility of data and methods, restricting access to certain components of a class.', 'Access modifiers', 'mcq', '', 4, 2),
(66, '__________ is a way of defining a class so that only one instance of the class can exist in a program.  A) Polymorphism B) Abstraction C) Singleton pattern D) Encapsulation', '', 'It ensures only one instance of a class.', 'The Singleton pattern in OOP ensures that only one instance of a class can exist in a program, providing a global point of access to it.', 'Singleton pattern', 'mcq', '', 4, 2),
(67, 'Encapsulation not only bundles data and methods but also restricts access to certain data by using __________ and public access specifiers.', '', 'Consider how access to data can be restricted.', 'Encapsulation uses access modifiers (public, private, protected) to control the visibility of data and methods, restricting access to certain components of a class.', 'Access modifiers', 'mcq', '', 4, 2),
(68, 'Hashing is a technique used to map data of arbitrary size to fixed-size values, typically for efficient __________.', '', 'Consider the purpose of hashing in data retrieval.', 'Hashing is a technique used for efficient searching. It involves mapping data to fixed-size values (hash codes) using a hash function, which allows for quick retrieval.', 'Searching', 'mcq', '', 6, 2);

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
(2, 3, 192153),
(3, 1, 192141),
(4, 1, 192153),
(5, 1, 192116),
(6, 1, 192054),
(7, 1, 192153);

-- --------------------------------------------------------

--
-- Table structure for table `q_kit_questions`
--

CREATE TABLE `q_kit_questions` (
  `q_kit_questions_id` int(11) NOT NULL,
  `q_kit_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `q_is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `q_kit_questions`
--

INSERT INTO `q_kit_questions` (`q_kit_questions_id`, `q_kit_id`, `q_id`, `q_is_correct`) VALUES
(1, 1, 47, 0),
(2, 1, 51, 1),
(3, 1, 24, 1),
(4, 1, 40, 0),
(5, 1, 50, 1),
(6, 1, 40, 1),
(7, 1, 24, 0),
(8, 1, 18, 1),
(9, 1, 39, 1),
(10, 1, 19, 1),
(11, 2, 36, 1),
(12, 2, 42, 0),
(13, 2, 42, 1),
(14, 2, 36, 1),
(15, 2, 36, 1),
(16, 2, 36, 1),
(17, 2, 36, 1),
(18, 2, 42, 1),
(19, 2, 36, 1),
(20, 2, 36, 0),
(21, 3, 20, 1),
(22, 3, 7, 1),
(23, 3, 17, 1),
(24, 3, 18, 1),
(25, 3, 19, 0),
(26, 3, 7, 0),
(27, 3, 40, 1),
(28, 3, 50, 1),
(29, 3, 15, 1),
(30, 3, 51, 1),
(31, 4, 40, 0),
(32, 4, 15, 1),
(33, 4, 51, 1),
(34, 4, 19, 1),
(35, 4, 20, 1),
(36, 4, 37, 1),
(37, 4, 37, 1),
(38, 4, 18, 1),
(39, 4, 49, 1),
(40, 4, 39, 0),
(41, 5, 19, 1),
(42, 5, 24, 1),
(43, 5, 48, 1),
(44, 5, 15, 1),
(45, 5, 1, 1),
(46, 5, 37, 1),
(47, 5, 1, 1),
(48, 5, 17, 1),
(49, 5, 24, 1),
(50, 5, 19, 1),
(51, 6, 50, 1),
(52, 6, 1, 1),
(53, 6, 7, 1),
(54, 6, 14, 1),
(55, 6, 5, 1),
(56, 6, 19, 1),
(57, 6, 51, 1),
(58, 6, 48, 1),
(59, 6, 37, 0),
(60, 6, 4, 0),
(61, 7, 40, 1),
(62, 7, 18, 1),
(63, 7, 4, 0),
(64, 7, 49, 1),
(65, 7, 49, 1),
(66, 7, 49, 1),
(67, 7, 1, 0),
(68, 7, 40, 1),
(69, 7, 15, 1),
(70, 7, 4, 1);

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
(192026, 'Sawani Dhanushika', '123456'),
(192054, 'J.D.M.N. Jayasuriya', '123456'),
(192116, 'Pubudu Ravindika', '123456'),
(192141, 'Amandi Tharuka', '123456'),
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
-- Indexes for table `lecturer_table`
--
ALTER TABLE `lecturer_table`
  ADD PRIMARY KEY (`lecturer_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `lecturer_id` (`lecturer_id`);

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
  ADD KEY `q_id` (`q_id`),
  ADD KEY `q_kit_id` (`q_kit_id`);

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
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `lecturer_table`
--
ALTER TABLE `lecturer_table`
  MODIFY `lecturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `progress_module`
--
ALTER TABLE `progress_module`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `q_kit`
--
ALTER TABLE `q_kit`
  MODIFY `q_kit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `q_kit_questions`
--
ALTER TABLE `q_kit_questions`
  MODIFY `q_kit_questions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer_table` (`lecturer_id`);

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
  ADD CONSTRAINT `q_kit_questions_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`),
  ADD CONSTRAINT `q_kit_questions_ibfk_3` FOREIGN KEY (`q_kit_id`) REFERENCES `q_kit_questions` (`q_kit_questions_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
