# SPDX-FileCopyrightText: 2023 Christina Sørensen
# SPDX-FileContributor: Christina Sørensen
#
# SPDX-License-Identifier: AGPL-3.0-only
{
  projectRootFile = "flake.nix";
  programs = {
    alejandra.enable = true;
    rustfmt.enable = true;
  };
  settings.formatter = {
    alejandra.excludes = ["repos/*"];
    rustfmt.excludes = ["repos/*"];
  };
}
