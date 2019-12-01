## The Testing Pyramid

The Testing Pyramid is a functional test development approach that divides tests into three layers: unit, integration, and end-to-end.

Unit tests are white-box tests that verify individual “units” of code, such as functions, methods, and classes. They should be written in the same language as the product under test, and they should be stored in the same repository. They often run as part of the build to indicate immediate success or failure.

Integration tests are black-box tests that verify integration points between system components work correctly. The product under test should be active and deployed to a test environment. Service tests are often integration-level tests.

End-to-end tests are black-box tests that test execution paths through a system. They could be seen as multi-step integration tests. Web UI tests are often end-to-end-level tests.
Below is a visual representation of the Testing Pyramid:


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/test-pyramid-coverage.jpg)
