from setuptools import setup

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
                  ['merkyl = merkyl:main']},
    install_requires=['bottle'],
    include_package_data=True,
    url="https://github.com/psav/merkyl",
)
