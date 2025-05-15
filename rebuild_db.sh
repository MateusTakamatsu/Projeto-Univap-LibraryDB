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
	*)
		echo "???????"
		return 1
		;;
esac
