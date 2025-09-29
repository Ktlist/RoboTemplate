from robot.api.deco import keyword
from robotbackgroundlogger import BackgroundLogger

logger = BackgroundLogger()

@keyword("Suite 2 Example Keyword")
def suite_2_example_keyword(arg1, arg2):
    logger.info(f"Executing Suite 2 Example Keyword with arguments: {arg1}, {arg2}")