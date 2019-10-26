/*
 Navicat Premium Data Transfer

 Source Server         : 148.70.189.44
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 148.70.189.44:3306
 Source Schema         : fast

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 26/10/2019 23:17:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for NOSE
-- ----------------------------
DROP TABLE IF EXISTS `NOSE`;
CREATE TABLE `NOSE`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARAM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MESSAGE` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MESSAGE_CN` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NOSE
-- ----------------------------
INSERT INTO `NOSE` VALUES (20, '-h, --help', 'show this help message and exit', NULL);
INSERT INTO `NOSE` VALUES (21, '-V, --version', 'Output nose version and exit', NULL);
INSERT INTO `NOSE` VALUES (22, '-p, --plugins', 'Output list of available plugins and exit. Combine with higher verbosity for greater detail', NULL);
INSERT INTO `NOSE` VALUES (23, '-v, --verbose', 'Be more verbose. [NOSE_VERBOSE]', NULL);
INSERT INTO `NOSE` VALUES (24, '--verbosity=VERBOSITY', ' Set verbosity; --verbosity=2 is the same as -v', NULL);
INSERT INTO `NOSE` VALUES (25, '-q, --quiet', 'Be less verbose', NULL);
INSERT INTO `NOSE` VALUES (26, '-c FILES, --config=FILES', ' Load configuration from config file(s). May be specified multiple times; in that case, all config files will be loaded and combined', NULL);
INSERT INTO `NOSE` VALUES (27, '-w WHERE, --where=WHERE', ' Look for tests in this directory. May be specified multiple times. The first directory passed will be used as the working directory, in place of the current working directory, which is the default. Others will be added to the list of tests to execute. [NOSE_WHERE]', NULL);
INSERT INTO `NOSE` VALUES (28, '--py3where=PY3WHERE', 'Look for tests in this directory under Python 3.x. Functions the same as \'where\', but only applies if running under Python 3.x or above.  Note that, if present under 3.x, this option completely replaces any directories specified with \'where\', so the \'where\' option becomes ineffective. [NOSE_PY3WHERE]', NULL);
INSERT INTO `NOSE` VALUES (29, '-m REGEX, --match=REGEX, --testmatch=REGEX', ' Files, directories, function names, and class names that match this regular expression are considered tests.  Default: (?:^|[_.-])[Tt]est [NOSE_TESTMATCH]', NULL);
INSERT INTO `NOSE` VALUES (30, '--tests=NAMES', 'Run these tests (comma-separated list). This argument is useful mainly from configuration files; on the command line, just pass the tests to run as additional arguments with no switch.', NULL);
INSERT INTO `NOSE` VALUES (31, '-l DEBUG, --debug=DEBUG', ' Activate debug logging for one or more systems. Available debug loggers: nose, nose.importer, nose.inspector, nose.plugins, nose.result and nose.selector. Separate multiple names with a comma.', NULL);
INSERT INTO `NOSE` VALUES (32, '--debug-log=FILE', 'Log debug messages to this file (default: sys.stderr)', NULL);
INSERT INTO `NOSE` VALUES (33, '--logging-config=FILE, --log-config=FILE', ' Load logging config from this file -- bypasses all other logging config settings.', NULL);
INSERT INTO `NOSE` VALUES (34, '-I REGEX, --ignore-files=REGEX', ' Completely ignore any file that matches this regular expression. Takes precedence over any other settings or plugins. Specifying this option will replace the default setting. Specify this option multiple times to add more regular expressions [NOSE_IGNORE_FILES]', NULL);
INSERT INTO `NOSE` VALUES (35, '-e REGEX, --exclude=REGEX', ' Don\'t run tests that match regular expression [NOSE_EXCLUDE]', NULL);
INSERT INTO `NOSE` VALUES (36, '-i REGEX, --include=REGEX', ' This regular expression will be applied to files, directories, function names, and class names for a chance to include additional tests that do not match TESTMATCH.  Specify this option multiple times to add more regular expressions [NOSE_INCLUDE]', NULL);
INSERT INTO `NOSE` VALUES (37, '-x, --stop', 'Stop running tests after the first error or failure', NULL);
INSERT INTO `NOSE` VALUES (38, '-P, --no-path-adjustment', ' Don\'t make any changes to sys.path when loading tests [NOSE_NOPATH]', NULL);
INSERT INTO `NOSE` VALUES (39, '--exe', 'Look for tests in python modules that are executable. Normal behavior is to exclude executable modules, since they may not be import-safe [NOSE_INCLUDE_EXE]', NULL);
INSERT INTO `NOSE` VALUES (40, '--noexe', 'DO NOT look for tests in python modules that are executable. (The default on the windows platform is to do so.)', NULL);
INSERT INTO `NOSE` VALUES (41, '--traverse-namespace', 'Traverse through all path entries of a namespace package', NULL);
INSERT INTO `NOSE` VALUES (42, '--first-package-wins, --first-pkg-wins, --1st-pkg-wins', ' nose\'s importer will normally evict a package from sys.modules if it sees a package with the same name in a different location. Set this option to disable that behavior.', NULL);
INSERT INTO `NOSE` VALUES (43, '--no-byte-compile', 'Prevent nose from byte-compiling the source into .pyc files while nose is scanning for and running tests.', NULL);
INSERT INTO `NOSE` VALUES (44, '-a ATTR, --attr=ATTR', 'Run only tests that have attributes specified by ATTR [NOSE_ATTR]', NULL);
INSERT INTO `NOSE` VALUES (45, '-A EXPR, --eval-attr=EXPR', ' Run only tests for whose attributes the Python expression EXPR evaluates to True [NOSE_EVAL_ATTR]', NULL);
INSERT INTO `NOSE` VALUES (46, '-s, --nocapture', 'Don\'t capture stdout (any stdout output will be printed immediately) [NOSE_NOCAPTURE]', NULL);
INSERT INTO `NOSE` VALUES (47, '--nologcapture', 'Disable logging capture plugin. Logging configuration will be left intact. [NOSE_NOLOGCAPTURE]', NULL);
INSERT INTO `NOSE` VALUES (48, '--logging-format=FORMAT', ' Specify custom format to print statements. Uses the same format as used by standard logging handlers. [NOSE_LOGFORMAT]', NULL);
INSERT INTO `NOSE` VALUES (49, '--logging-datefmt=FORMAT', ' Specify custom date/time format to print statements. Uses the same format as used by standard logging handlers. [NOSE_LOGDATEFMT]', NULL);
INSERT INTO `NOSE` VALUES (50, '--logging-filter=FILTER', ' Specify which statements to filter in/out. By default, everything is captured. If the output is too verbose, use this option to filter out needless output. Example: filter=foo will capture statements issued ONLY to  foo or foo.what.ever.sub but not foobar or other logger. Specify multiple loggers with comma: filter=foo,bar,baz. If any logger name is prefixed with a minus, eg filter=-foo, it will be excluded rather than included. Default: exclude logging messages from nose itself (-nose). [NOSE_LOGFILTER]', NULL);
INSERT INTO `NOSE` VALUES (51, '--logging-clear-handlers', ' Clear all other logging handlers', NULL);
INSERT INTO `NOSE` VALUES (52, '--logging-level=LOGCAPTURE_LEVEL', ' Set the log level to capture', NULL);
INSERT INTO `NOSE` VALUES (53, '--with-coverage', 'Enable plugin Coverage:  Activate a coverage report using Ned Batchelder\'s coverage module. [NOSE_WITH_COVERAGE]', NULL);
INSERT INTO `NOSE` VALUES (54, '--cover-package=PACKAGE', ' Restrict coverage output to selected packages [NOSE_COVER_PACKAGE]', NULL);
INSERT INTO `NOSE` VALUES (55, '--cover-erase', 'Erase previously collected coverage statistics before run', NULL);
INSERT INTO `NOSE` VALUES (56, '--cover-tests', 'Include test modules in coverage report [NOSE_COVER_TESTS]', NULL);
INSERT INTO `NOSE` VALUES (57, '--cover-min-percentage=COVER_MIN_PERCENTAGE', ' Minimum percentage of coverage for tests to pass [NOSE_COVER_MIN_PERCENTAGE]', NULL);
INSERT INTO `NOSE` VALUES (58, '--cover-inclusive', 'Include all python files under working directory in coverage report.  Useful for discovering holes in test coverage if not all files are imported by the test suite. [NOSE_COVER_INCLUSIVE]', NULL);
INSERT INTO `NOSE` VALUES (59, '--cover-html', 'Produce HTML coverage information', NULL);
INSERT INTO `NOSE` VALUES (60, '--cover-html-dir=DIR', 'Produce HTML coverage information in dir', NULL);
INSERT INTO `NOSE` VALUES (61, '--cover-branches', 'Include branch coverage in coverage report [NOSE_COVER_BRANCHES]', NULL);
INSERT INTO `NOSE` VALUES (62, '--cover-xml', 'Produce XML coverage information', NULL);
INSERT INTO `NOSE` VALUES (63, '--cover-xml-file=FILE', ' Produce XML coverage information in file', NULL);
INSERT INTO `NOSE` VALUES (64, '--pdb', 'Drop into debugger on failures or errors', NULL);
INSERT INTO `NOSE` VALUES (65, '--pdb-failures', 'Drop into debugger on failures', NULL);
INSERT INTO `NOSE` VALUES (66, '--pdb-errors', 'Drop into debugger on errors', NULL);
INSERT INTO `NOSE` VALUES (67, '--no-deprecated', 'Disable special handling of DeprecatedTest exceptions.', NULL);
INSERT INTO `NOSE` VALUES (68, '--with-doctest', 'Enable plugin Doctest:  Activate doctest plugin to find and run doctests in non-test modules. [NOSE_WITH_DOCTEST]', NULL);
INSERT INTO `NOSE` VALUES (69, '--doctest-tests', 'Also look for doctests in test modules. Note that classes, methods and functions should have either doctests or non-doctest tests, not both. [NOSE_DOCTEST_TESTS]', NULL);
INSERT INTO `NOSE` VALUES (70, '--doctest-extension=EXT', ' Also look for doctests in files with this extension [NOSE_DOCTEST_EXTENSION]', NULL);
INSERT INTO `NOSE` VALUES (71, '--doctest-result-variable=VAR', ' Change the variable name set to the result of the last interpreter command from the default \'_\'. Can be used to avoid conflicts with the _() function used for text translation. [NOSE_DOCTEST_RESULT_VAR]', NULL);
INSERT INTO `NOSE` VALUES (72, '--doctest-fixtures=SUFFIX', ' Find fixtures for a doctest file in module with this name appended to the base name of the doctest file', NULL);
INSERT INTO `NOSE` VALUES (73, '--doctest-options=OPTIONS', ' Specify options to pass to doctest. Eg. \'+ELLIPSIS,+NORMALIZE_WHITESPACE\'', NULL);
INSERT INTO `NOSE` VALUES (74, '--with-isolation', 'Enable plugin IsolationPlugin:  Activate the isolation plugin to isolate changes to external modules to a single test module or package. The isolation plugin resets the contents of sys.modules after each test module or package runs to its state before the test. PLEASE NOTE that this plugin should not be used with the coverage plugin, or in any other case where module reloading may produce undesirable side-effects. [NOSE_WITH_ISOLATION]', NULL);
INSERT INTO `NOSE` VALUES (75, '-d, --detailed-errors, --failure-detail', ' Add detail to error output by attempting to evaluate failed asserts [NOSE_DETAILED_ERRORS]', NULL);
INSERT INTO `NOSE` VALUES (76, '--no-skip', 'Disable special handling of SkipTest exceptions.', NULL);
INSERT INTO `NOSE` VALUES (77, '--with-id', 'Enable plugin TestId:  Activate to add a test id (like #1) to each test name output. Activate with --failed to rerun failing tests only.  [NOSE_WITH_ID]', NULL);
INSERT INTO `NOSE` VALUES (78, '--id-file=FILE', 'Store test ids found in test runs in this file. Default is the file .noseids in the working directory.', NULL);
INSERT INTO `NOSE` VALUES (79, '--failed', 'Run the tests that failed in the last test run.', NULL);
INSERT INTO `NOSE` VALUES (80, '--processes=NUM', 'Spread test run among this many processes. Set a number equal to the number of processors or cores in your machine for best results. Pass a negative number to have the number of processes automatically set to the number of cores. Passing 0 means to disable parallel testing. Default is 0 unless NOSE_PROCESSES is set. [NOSE_PROCESSES]', NULL);
INSERT INTO `NOSE` VALUES (81, '--process-timeout=SECONDS', ' Set timeout for return of results from each test runner process. Default is 10. [NOSE_PROCESS_TIMEOUT]', NULL);
INSERT INTO `NOSE` VALUES (82, '--process-restartworker', ' If set, will restart each worker process once their tests are done, this helps control memory leaks from killing the system. [NOSE_PROCESS_RESTARTWORKER]', NULL);
INSERT INTO `NOSE` VALUES (83, '--with-xunit', 'Enable plugin Xunit: This plugin provides test results in the standard XUnit XML format. [NOSE_WITH_XUNIT]', NULL);
INSERT INTO `NOSE` VALUES (84, '--xunit-file=FILE', 'Path to xml file to store the xunit report in. Default is nosetests.xml in the working directory [NOSE_XUNIT_FILE]', NULL);
INSERT INTO `NOSE` VALUES (85, '--xunit-testsuite-name=PACKAGE', ' Name of the testsuite in the xunit xml, generated by plugin. Default test suite name is nosetests.', NULL);
INSERT INTO `NOSE` VALUES (86, '--all-modules', 'Enable plugin AllModules: Collect tests from all python modules.  [NOSE_ALL_MODULES]', NULL);

SET FOREIGN_KEY_CHECKS = 1;
