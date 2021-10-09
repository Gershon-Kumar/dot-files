file_name="$1.cpp" #set first command line argument as filename and concat .cpp

cpp_template=$( cat $HOME/dot-files/competitive-programming/cpp_snippet.cpp)


$(touch "$file_name")

echo "$cpp_template">>$file_name
