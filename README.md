# julia_apps
applications for julia with pkg and manifest toml

How to create an App ?
======================
Step 1:
Add "PkgTemplates","DocumenterTools"

Step 2:
template = Template(dir=".", user="rcherukuri12")

Step 3:
PkgTemplates.generate(template,"libsvm_reader")

This will create an app folder called "libsvm_reader" in the folder where you started Julia.

Step 4:
cd("libsvm_reader")

Step 5:
DocumenterTools.generate()

Now exit out of Julia command-line and use atom or VS code to write code.
You will see "src" for building your julia module and other files
You will see "test" for writing test files
You will see "docs" for writing documentation.

How to build App ?
==================
julia --project=. src/libsvm_reader.jl

How to test App?
================
julia --project=. test/runtests.jl
