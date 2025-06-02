# Top Java Compiler Error Messages

## What is this?

This is the list of the **top 20** Java "first"[^1] compiler error messages made by students from [Blackbox Mini][]. The Java files in this repo are minimal(-ish) Java files
that will produce the corresponding error message in most versions of the OpenJDK `javac` compiler. This list does not include runtime errors (so `NullPointerException`
is not on this list, sorry!).

Because error message distributions [tend to follow the Zipf-Mandelbrot law][pritchard], these 20 error messages account for 85.72% of all error messages in
the entire Blackbox Mini dataset.

[^1]: A "first" compiler error message is the first error message reported when multiple error messages are reported. This is because the first error message reported is
typically a true indication of a real error that occurred, whereas, any subsequent error message might be a false positive, due to faulty error recovery in the reporting
the first error message.

## The list

| Rank    | Error Message                                                                          | Origin        | Raw Frequency | Percentage | Cumulative Percentage |
|--------:|----------------------------------------------------------------------------------------|---------------|--------------:|-----------:|----------------------:|
|  [1][]  | reached end of file while parsing                                                      | Parser        |        555315 |     14.77% |                14.77% |
|  [2][]  | ';' expected                                                                           | Parser        |        427147 |     11.36% |                26.12% |
|  [3][]  | cannot find symbol -   variable <kbd>name</kbd>                                        | Resolve       |        422802 |     11.24% |                37.36% |
|  [4][]  | illegal start of expression                                                            | Parser        |        218987 |      5.82% |                43.19% |
|  [5][]  | \<identifier\> expected                                                                | Parser        |        198829 |      5.29% |                48.47% |
|  [6][]  | cannot find symbol -   method <kbd>name</kbd>()                                        | Resolve       |        178516 |      4.75% |                53.22% |
|  [7][]  | cannot find symbol -   class <kbd>name</kbd>                                           | Resolve       |        161755 |      4.30% |                57.52% |
|  [8][]  | not a statement                                                                        | Parser        |        144363 |      3.84% |                61.36% |
|  [9][]  | class, interface, or enum expected                                                     | Parser        |        139908 |      3.72% |                65.08% |
| [10][]  | ')' expected                                                                           | Parser        |        138658 |      3.69% |                68.77% |
| [11][]  | incompatible types: <kbd>name</kbd> cannot be converted to <kbd>name</kbd>             | Check         |        117082 |      3.11% |                71.88% |
| [12][]  | missing return statement                                                               | Flow Analysis |        101325 |      2.69% |                74.57% |
| [13][]  | constructor <kbd>name</kbd> in class <kbd>name</kbd> cannot be applied to given types; | Check         |         76408 |      2.03% |                76.61% |
| [14][]  | invalid method declaration; return type required                                       | Parser        |         65922 |      1.75% |                78.36% |
| [15][]  | package <kbd>name</kbd> not exist                                                      | Parser        |         57547 |      1.53% |                79.89% |
| [16][]  | illegal start of type                                                                  | Parser        |         56768 |      1.51% |                81.40% |
| [17][]  | unclosed string literal                                                                | Scanner       |         46630 |      1.24% |                82.64% |
| [18][]  | '(' expected                                                                           | Parser        |         39214 |      1.04% |                83.68% |
| [19][]  | variable <kbd>name</kbd> is already defined in method <kbd>name</kbd>()                | Check         |         38921 |      1.03% |                84.72% |
| [20][]  | illegal start of statement                                                             | Parser        |         37802 |      1.01% |                85.72% |

### Explanation

The list is ordered from most frequently occurring to least frequently occurring. <kbd>name</kbd> indicates a placeholder where a name (e.g., variable, class, type,
method, package) would go.

#### Columns

 - **Raw Frequency**: the total count that error messages of that category have appeared in the entire Blackbox Mini dataset
 - **Origin**: What stage of compilation does this error message originate from? For the purposes of this file, a Java file first passes through the scanner, then the
   parser. Once a full internal representation of the code and all its symbols (e.g., variable names) is created, they are the symbols are then resolved (linked to
   a concrete definition). Finally, the code is analyzed in various ways, including checking types and ensuring that all code paths have a valid return statement (Flow
   Analysis).
 - **Percentage**: the percentage of _all_ (not just the top 20) first error message that this category represents.
 - **Cumulative Percentage**: the percentage of _all_ error messages this category represents, plus the percentage of all categories before it.

## Credits

The minimal reproducible examples are based on [prior work][] by [Byron Hart][]. However, most of the examples in this repository were authored by me.

## License

Copyright © 2025 Eddie Antonio Santos.

This README, and all code in this repository code distributed under the terms of the Creative Commons Attribution 4.0 International (CC-BY-4.0) license.
See [LICENSE](./LICENSE) for details.

[Blackbox Mini]: https://dl.acm.org/doi/full/10.1145/3551393
[pritchard]: https://dl.acm.org/doi/abs/10.1145/2846680.2846681
[regexes]: https://github.com/eddieantonio/project-antipatterns/blob/5738311e4598cc0beb8c89bfb4f9a83e084eb778/java_error_messages/message_patterns.py#L77-L314
[prior work]: https://gist.github.com/eddieantonio/e200db878745cfbe3ccefd04a62b9b64
[Byron Hart]: https://github.com/Byron-Hart
[1]: ./BBM01.java
[2]: ./BBM02.java
[3]: ./BBM03.java
[4]: ./BBM04.java
[5]: ./BBM05.java
[6]: ./BBM06.java
[7]: ./BBM07.java
[8]: ./BBM08.java
[9]: ./BBM09.java
[10]: ./BBM10.java
[11]: ./BBM11.java
[12]: ./BBM12.java
[13]: ./BBM13.java
[14]: ./BBM14.java
[15]: ./BBM15.java
[16]: ./BBM16.java
[17]: ./BBM17.java
[18]: ./BBM18.java
[19]: ./BBM19.java
[20]: ./BBM20.java
