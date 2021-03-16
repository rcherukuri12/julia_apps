# julia_apps
applications for julia with pkg and manifest toml

How to create an App ?
======================
Step 1:
Add "PkgTemplates"

Step 2:
template = Template(dir=".", user="rcherukuri12")

Step 3:
generate(template,"libsvm_reader")

This will create an app in the folder where you started Julia.
Now exit out of Julia command-line and use atom to write code.

How to build App ?
==================
julia --project=. src/libsvm_reader.jl

How to test App?
================
julia --project=. test/runtests.jl
