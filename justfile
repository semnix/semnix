# SPDX-FileCopyrightText: 2023 Christina Sørensen
# SPDX-FileContributor: Christina Sørensen
#
# SPDX-License-Identifier: AGPL-3.0-only

# Pulls each Submodule.
pullEach:
    git submodule foreach git pull

# Bump all submodules with upstream.
bumpFromUpstream:
    just pullEach
    just flake-utils


# --- Upstream Helpers

# Ensures a upstream remote exists and rebase it on top of submodule.
flake-utils:
    cd flake-utils
    # We ignore errors because it's likely it already exists
    -git remote add upstream git@github.com:numtide/flake-utils.git
    git fetch upstream
    git rebase upstream/main
    cd ..

# ---
