from invoke import task

@task
def lint(c):
    c.run("robocop check ./")

@task
def test(c):
    c.run("robot --outputdir=reports/tests --variablefile tests")

@task
def generate_docs(c):
    c.run("python -m robot.testdoc -i test_manager_id_001 tests/ reports/docs/example_test.html")

@task
def clean(c):
    c.run("rm -rf reports")