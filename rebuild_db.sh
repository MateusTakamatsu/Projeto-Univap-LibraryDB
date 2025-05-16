# Script to drop, create and populate library_db

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
		mariadb library_db -e "SELECT * FROM volumes_rentals;"
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
