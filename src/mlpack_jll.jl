# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule mlpack_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("mlpack")
JLLWrappers.@generate_main_file("mlpack", UUID("156a7db3-27ba-586e-a86b-f061da4f95ea"))
end  # module mlpack_jll
