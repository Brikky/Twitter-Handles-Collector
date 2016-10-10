# Twitter-Handles-Collector

Use grab_handles.rb to collect handles from one or more website URLs

Use grab_handles_from_txt.rb to collect handles from one or more text files

## Use:

1. Verify that your computer has Ruby installed:

   ```$ruby -v ```

   *If your computer does not have Ruby,* install it by following the directions [here](https://www.ruby-lang.org/en/documentation/installation/).

2. Run the desired program in the terminal.

    To collect handles from text files:

      ```ruby 'DESIRED_OUTPUT_FILENAME.txt' file1 file2...```

    *Use relative paths*
    ___

    To collect handles from URLs:

      ```ruby 'DESIRED_OUTPUT_FILENAME.txt' url1 url2...```

3. Twitter handles will be output to the specified filename in the directory from which the program was run.
