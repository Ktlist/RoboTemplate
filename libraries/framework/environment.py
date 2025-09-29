"""Initialize the test environment.

This module contains keywords to set up and manage the test environment.
It can be extended with additional functionality as needed.

== Table of contents ==

%TOC%

== Environment Initialization ==
This is one of the most important keywords in all of this template.
as always you can choose to avoid using this way of data initialization.

This keyword is meant to initialize all the tools used in a test bench, 
this usually means physical benches with instrumentation, PCs, etc.
but can also be used to initialize virtual environments, simulators, mockups, etc.
The idea is to have a single keyword that initializes everything needed for the tests to run.

The keyword as it is will take as input the dictionary created by the file env.yaml present at the root of the template.
You can modify this keyword to take other types of input, or even no input at all.

The output of this keyword is a dictionary that will be stored in the variable ${ENVIRONMENT}
the idea here is that the dictionary not only contains the input data procesed by the keyword,
but also organizes the class instance or handles to control all the elements involved in the bench.
This way, the test cases can access any element of the bench through this single variable.

For an example of data go to the file env.yaml at the root of the template.

"""

from robot.api.deco import keyword


@keyword("Initialize Environment")
def initialize_environment(data_input):
    """Keyword to initialize the test environment."""
    # Add your initialization code here
    return {"status": "Environment initialized", "data": data_input}
