#include <stdio.h>
#include <string.h>
#include <dirent.h>

// ANSI color in c
#define BLUE "\e[1;34m" // bold
#define COLOR_RESET "\e[0m"

void print_file(const char *name, int is_dir, int indent) {
	if (indent)
		printf("%*c", indent * 2, ' ');

	if (is_dir)
		printf("•📁%s%s%s\n", BLUE, name, COLOR_RESET);
	else
		printf("%s\n", name);
}

int walk(const char *path, int indent) {
	DIR *dir = opendir(path);
	if (!dir) {
		perror("operdir");
		return 1;
	}

	struct dirent *dp;
	while ((dp = readdir(dir)) != NULL) {
		const char *name = dp->d_name;

		// ignore files
		if (strcmp(name, ".") == 0 || strcmp(name, "..") == 0)
			continue;

		if (dp->d_type == DT_DIR) {
			print_file(name, 1, indent);

			// walk to sub path
			size_t len = strlen(path) + strlen(name) + 2;
			char sub_path[len];
			snprintf(sub_path, len, "%s/%s", path, name);

			walk(sub_path, indent + 1);
		} else {
			print_file(name, 0, indent);
		}
	}

	closedir(dir);
	return 0;
}

int main(int argc, char **argv) {
    const char *path = "."; // default path is current dir

    if  (argc > 1) {
    	path = argv[1];
    } 

    int err = walk(path, 0);
    
    return err;
}