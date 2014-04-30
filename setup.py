from setuptools import setup

setup(
    name="merkyl",
    version='1.0.1',
    description="Log file tailer with bottle",
    author="Pete Savage",
    keywords=["tail", "linux", "bottle"],
    license="PSF",
    classifiers=[
        "Programming Language :: Python",
        "Development Status :: 4 - Beta",
        "Operating System :: POSIX :: Linux",
        "License :: OSI Approved :: Python Software Foundation License"],
    packages=['merkyl'],
    entry_points={'console_scripts':
                  ['merkyl = merkyl:main']},
    install_requires=['bottle'],
    include_package_data=True,
    url="https://github.com/psav/merkyl",
)
