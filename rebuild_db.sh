# Script to drop, create and populate library_db

action="$1"

case $action in
	d)
		echo "Dropping database..."
		mariadb -e "DROP DATABASE library_db;"
		;;
	c)
		echo "Creating database..."
		mariadb < ./create.sql
		;;
	p)
		echo "Populating database..."
		mariadb library_db < ./populate.sql
		;;
	*)
		echo "???????"
		return 1
		;;
esac
