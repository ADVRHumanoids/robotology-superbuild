# Raise
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(drc_shared QUIET)
find_or_build_package(GYM QUIET)
find_or_build_package(OpenSoT QUIET)
find_or_build_package(trajectory_generator QUIET)

ycm_ep_helper(  drc_raise 
                TYPE GIT
                STYLE GITLAB_ROBOTOLOGY
                REPOSITORY walkman-drc/drc_raise.git
                TAG master
                COMPONENT drc
                DEPENDS drc_shared
                        GYM
                        OpenSoT
                        trajectory_generator
            )