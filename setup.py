from setuptools import setup

setup(
    name='llpctl',
    version='0.5.0',
    py_modules=['llpctl'],
    install_requires=[
        'click==7.0',
        'colorama==0.4.1',
        'django-environ==0.4.5',
        'pylint==2.4.4',
        'pytest==5.3.0',
        'semver==2.9.0',
    ],
    entry_points='''
        [console_scripts]
        llpctl=llpctl:cli
    ''',
)
