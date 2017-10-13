<!DOCTYPE = html>
<html>
	<head>
		<title>332_Project</title>
	</head>
	<body>
		<script language="PHP">
			$link=mysql_connect("ecsmysql", "cs332t20", "ichueloo"); 
			if (!$link)
			{
				die('Unable to connect' .mysql_error());
			}
			mysql_select_db("cs332t20", $link);

			if ($_POST['professor_ssn'])
			{
				$query = "SELECT distinct C.title, S.classroom, S.days, S.startTime, S.endTime FROM	professor P, section S, course C WHERE P.SSN = S.proffSSN AND S.courseNo = C.courseNo AND P.SSN = " . $_POST['professor_ssn'];
				$result = mysql_query($query, $link);
				echo '<h2>List of Classes</h2>';
				while ($list = mysql_fetch_assoc($result)) {
					echo '<table>';
					echo '<tr><td>Course Title:</td><td>' . $list['title'] . '</td></tr>';
					echo '<tr><td>Classroom:</td><td>' . $list['classroom'] . '</td></tr>';
					echo '<tr><td>Days:</td><td>' . $list['days'] . '</td></tr>';
					echo '<tr><td>Start Time:</td><td>' . $list['startTime'] . '</td></tr>';
					echo '<tr><td>End Time:</td><td>' . $list['endTime'] . '</td></tr>';
					echo '</table><br>';
				}
			}

			if ($_POST['professor_course'])
			{
				$query = "SELECT E.grade, count(E.grade) AS 'student count' FROM enrollment E WHERE E.courseNo = " . $_POST['professor_course'] . " AND E.sectionNo = " . $_POST['professor_section'] . " GROUP BY E.grade";
				$result = mysql_query($query, $link);
				echo '<h2>Grade Distribution</h2>';
				while ($list = mysql_fetch_assoc($result)) {
					echo '<table>';
					echo '<tr><td>Grade:</td><td>' . $list['grade'] . '</td></tr>';
					echo '<tr><td>Student Count:</td><td>' . $list['student count'] . '</td></tr>';
					echo '</table><br>';
				}
			}

			if ($_POST['student_course'])
			{
				$query = "SELECT S.classroom, S.days, S.startTime, S.EndTime, COUNT(E.CWID) AS 'student count' FROM enrollment E, section S WHERE S.courseNo = " . $_POST['student_course'] . "	AND E.courseNo = S.courseNo AND E.sectionNo = S.sectionNo GROUP BY E.sectionNo, E.courseNo";
				$result = mysql_query($query, $link);
				echo '<h2>List of Sections</h2>';
				while ($list = mysql_fetch_assoc($result)) {
					echo '<table>';
					echo '<tr><td>Classroom:</td><td>' . $list['classroom'] . '</td></tr>';
					echo '<tr><td>Days:</td><td>' . $list['days'] . '</td></tr>';
					echo '<tr><td>Start Time:</td><td>' . $list['startTime'] . '</td></tr>';
					echo '<tr><td>End Time:</td><td>' . $list['EndTime'] . '</td></tr>';
					echo '<tr><td>Student Count:</td><td>' . $list['student count'] . '</td></tr>';
					echo '</table><br>';
				}
			}

			if ($_POST['student_cwid'])
			{
				$query = "SELECT distinct C.title, E.grade FROM enrollment E, course C WHERE E.CWID = " . $_POST['student_cwid'] . " AND E.courseNo = C.courseNo";
				$result = mysql_query($query, $link);
				echo '<h2>List of Grades</h2>';
				while ($list = mysql_fetch_assoc($result)) {
					echo '<table>';
					echo '<tr><td>Course Title:</td><td>' . $list['title'] . '</td></tr>';
					echo '<tr><td>Grade:</td><td>' . $list['grade'] . '</td></tr>';
					echo '</table><br>';
				}
			}

			mysql_close($link);
		</script>
	</body>
</html>