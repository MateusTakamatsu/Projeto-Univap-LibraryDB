# Script to drop, create and populate library_db

# Requirements to use this script
# 1. All of the following script files must be in the same directory;
#	a. create.sql
#	b. populate.sql
#	c. each_row_count.sql
#	d. rebuild_db.sh
# 2. You must have a .my.cnf file in your home directory (~/)
#	a. Example can be found at example.my.cnf

action="$1"

case $action in
	d)
		echo "Dropping database..."
		mariadb -e "DROP DATABASE library_db;"
		echo "Showing result..."
		mariadb -e "SHOW DATABASES;"
		;;
	c)
		echo "Creating database..."
		mariadb < ./create.sql
		echo "Showing result..."
		mariadb library_db -e "SHOW TABLES;"
		;;
	p)
		echo "Populating database..."
		mariadb library_db < ./populate.sql
		echo "Showing result..."
		mariadb library_db -e "SELECT * from returns;"
		;;
	count)
		echo "Counting rows of each table..."
		mariadb library_db < ./each_row_count.sql | column -t | awk 'BEGIN{c1="\033[37m";c2="\033[36m";r="\033[0m"}{print ((NR%2==0)?c1:c2) $0 r}'
		;;
	*)
		echo "???????"
		return 1
		;;
esac
