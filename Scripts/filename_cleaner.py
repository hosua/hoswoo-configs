import os


# Remove nth character from end of file
def rreplace(string, old, new, occurrence):
    li = string.rsplit(old, occurrence)
    return new.join(li)


# Removes last occurrence of string in parentheses
def remove_last_parenthesized_str(string):
    found_end = False
    found_beginning = False
    out_str = ""
    start = 0
    end = 0
    for i in range(len(string)):
        char = string[i]
        if char == ")":
            end = i
            found_end = True
        if char == "(":
            start = i
            found_end = True
        if found_end and found_beginning is True:
            break
    out_str = string[0:start-1] + string[end+1:len(string)]
    return out_str


# if we detect 4th character from end of filename as a space, delete it
def batch_remove_char_at_nth_from_end(root):
    char = input("char to look for: ")
    index = input("index to check at: ")
    os.chdir(root)
    for filename in os.listdir(root):
        if len(filename) > index:
            if filename[len(filename)-index-1] == char:
                out = rreplace(filename, char, "", 1)
                print("renaming " + filename + " -> " + out)
                os.rename(filename, out)


def batch_remove_last_parenthesized(root):
    os.chdir(root)
    for filename in os.listdir(root):
        if "(" and ")" in filename:
            new_name = remove_last_parenthesized_str(filename)
            print("renaming " + filename + " -> " + new_name)
            os.rename(filename, new_name)


def batch_move_subdir_to_parent(root):
    os.chdir(root)
    parent = os.pardir
    print(parent)
    print("in " + os.getcwd())
    for subdir in os.listdir(root):
        #print("subdir: " + subdir)
        if os.path.isdir(subdir):
            os.chdir(subdir)
            print("changed to " + subdir)
            for f in os.listdir(os.getcwd()):
                print(f)
                if os.path.isfile(f):
                    # We can easily do path stuff similarly to the way we would in Linux, lit.
                    destination = "../" + f
                    print("Moving " + f + " -> " + destination)
                    os.rename(f, destination)
            os.chdir("..")


def tidy_youtube_rips(root):
    batch_move_subdir_to_parent(root)
    batch_remove_last_parenthesized(root)
    os.chdir(root)
    for f in os.listdir(root):
        if os.path.isdir(f):
            os.remove(f)


def menu():
    opt = input("Select an option:\n"
                "1) Batch move sub-directory to parent\n"
                "2) Batch remove last parenthesized\n"
                "3) Batch remove character at nth index from the end\n"
                "4) Tidy YouTube rips\n")

    work_directory = input("Enter the directory you want to work in (enclose it in quotes): ")
    if opt == 1:
        batch_move_subdir_to_parent(work_directory)
    if opt == 2:
        batch_remove_last_parenthesized(work_directory)
    if opt == 3:
        batch_remove_char_at_nth_from_end(work_directory)
    if opt == 4:
        tidy_youtube_rips(work_directory)


def main():
    menu()
    # work_directory = input("Enter the directory you want to work in (enclose it in quotes): ")
    # batch_move_subdir_to_parent(work_directory)


if __name__ == "__main__":
    main()
