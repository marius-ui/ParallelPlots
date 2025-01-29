# Working on this Package / Cheatsheet
1. Using the Package
   * `activate /path/to/package` <br>
   or<br>
   `activate .` when Julia was opened with command prompt already in package path
 
   * _you will then see: `(ParallelPlots) pkg>`_

2. Running commands
   * Adding external Dependencies
     - `add DepName`
   * Run Tests to check if Package is still working as intended 
     - `test`
   * Build
     - `build`
   * Precompile
     - `precompile`