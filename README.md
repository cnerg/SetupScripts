# SetupScripts
Set of scripts for installing the DAGMC-Trelis plugin and its dependencies on a clean machine.
Currently operational on a basic level up through the step of using Make on the DAGMC-Trelis plugin.
The scripts (specifically those installing Trelis and its SDK) involve box.com, and reference my username there.
For now these files should be manually modified to use your own account, or should simply be avoided if you have Trelis 16.3 and the SDK already.
There are currently 5 stages of installation: MOAB, DAGMC, Trelis, Trelis SDK, and the DAGMC-Trelis plugin, as well as a full script which runs each in sequence.
Note: moabScript, dagmcScript, and of course fullScript must each be run as source or else they will fail to update PATH variables.
