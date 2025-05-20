# Add this function to your bashrc
ldb() {
    local base_dir_path="/home/mateus/univap_projects/library_db"
    "$base_dir_path/rebuild_db.sh" "$base_dir_path" "$1"
}