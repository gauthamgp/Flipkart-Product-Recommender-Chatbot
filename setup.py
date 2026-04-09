from setuptools import setup,find_packages

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="FLIPKART RECOMMENDER",
    version="0.2",
    author="gauthampai",
    packages=find_packages(),
    install_requires = requirements,
)