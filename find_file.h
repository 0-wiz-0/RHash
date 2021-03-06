/* find_file.h - declaration of find_file function.
 *
 * find_file function searches through a directory tree calling a call_back on
 * each file.
 */
#ifndef FIND_FILE_H
#define FIND_FILE_H

#include "common_func.h"

#ifdef __cplusplus
extern "C" {
#endif

/* find_file options */
#define FIND_WALK_DEPTH_FIRST 1
#define FIND_FOLLOW_LINKS 2
#define FIND_SKIP_DIRS 4
#define FIND_LOG_ERRORS 8
#define FIND_CANCEL 16

/**
 * Options for file search.
 */
typedef struct file_search_data
{
	int options;
	int max_depth;
	blocks_vector_t root_files;
	int (*call_back)(file_t* file, int data);
	int call_back_data;
	int errors_count;
} file_search_data;

file_search_data* create_file_search_data(rsh_tchar** paths, size_t count, int max_depth);
void destroy_file_search_data(file_search_data* data);

void scan_files(file_search_data* data);

int find_file(file_t* start_dir, file_search_data* options);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* FIND_FILE_H */
