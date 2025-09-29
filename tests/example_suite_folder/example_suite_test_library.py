from robot.api.deco import keyword
from robotbackgroundlogger import BackgroundLogger

logger = BackgroundLogger()

@keyword("Suite 1 Example Keyword")
def suite_1_example_keyword(arg1, arg2):
    logger.info(f"Executing Suite 1 Example Keyword with arguments: {arg1}, {arg2}")