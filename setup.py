from distutils.core import setup

setup(
    name="merkyl",
    version='1.0.0',
    description="Log file tailer with bottle",
    author="Pete Savage",
    keywords=["tail", "linux", "bottle"],
    classifiers=[
        "Programming Language :: Python",
        "Development Status :: 4 - Beta",
        "License :: PSF",
        "Operating System :: Linux"],
    packages=['merkyl'],
    entry_points={'console_scripts':
                  ['binary_name = merkyl.dotted_path:cli_handler_function']}
)
