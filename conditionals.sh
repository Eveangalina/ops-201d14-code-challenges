import os

path = "example_directory"  # Change this to the path of the file or directory you want to check/create

if not os.path.exists(path):
    if os.path.isfile(path):
        # If it doesn't exist and it's a file, create the file
        with open(path, 'w') as file:
            pass
        print(f"File '{path}' has been created.")
    elif os.path.isdir(path):
        # If it doesn't exist and it's a directory, create the directory
        os.mkdir(path)
        print(f"Directory '{path}' has been created.")
else:
    print(f"'{path}' already exists.")
    # end
