import os
from setuptools import setup

setup(
    name='hydjack',
    version='0.1',
    packages=['hydjack'],
    include_package_data=True,
    license='MIT License',
    description='Django just got Hy',
    #long_description=README,
    url='https://github.com/code-shoily/hydjack',
    author='Code Shoily',
    author_email='code.shoily@gmail.com',
    classifiers=[
        'Environment :: Web Environment',
        'Framework :: Django',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python/Hylang',
        'Programming Language :: Python :: 2.7',
        'Topic :: Internet :: WWW/HTTP',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
    ],
)
