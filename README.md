# FKGL

Partial codes and results of the experiment on the robustness of FKGL as a text simplification evaluation metric, as well as effects on BLEU and SARI. The original and complete repository is Metrics directory (local) since it includes joshua and dress, which are huge. The files uploaded here are the original/modified codes and the outputs and process results.

_Experiment: run Instructions for the complete repo_

1. BLEU
* cd path/Metrics
* ./ppdb-simplification-release-joshua5.0/joshua/bin/bleu Hybrid.lower ./simplification/data/turkcorpus/test.8turkers.tok.turk 8
* Note: change "EncDecA.lower" to actual output paths evaluate other output files

2. SARI (1-reference)
* cd path/Metrics
* ./ppdb-simplification-release-joshua5.0/joshua/bin/star_1 ./dress/all-system-output/WikiSmall/test/EncDecA ./dress/all-system-output/WikiSmall/test/Reference ./dress/all-system-output/WikiSmall/test/Complex

Note: Both programs print out all the sentences as it evaluates.

3. SARI (8-references)
* cd path/Metrics
* sh wikilarge.show_all_sari.sh | grep ======== -B 2 -A 2

Additional Notes:
* 2nd argument (output file) can be changed to full file path if the file is somewhere else. Currently, all the lower-case outputs have been copied to the main directory.
-* Basic structures of the directory: dress, ppdb-simplification-release-joshua5.0, simplification; star and star_1 separately downloaded and copied to into joshua/bin.

If bash scripts have a problem:
* They are "bleu" or "star_1" in ./ppdb-simplification-release-joshua5.0/joshua/bin/
* Unbound variable error: $JOSHUA doesn't work; just replace the part after java -cp with the full path from wherever we're running from .
* Could not find or load main class joshua.util.JoshuaEval: the path from the previous item is incorrect.
* Similar file path issue fixes apply with wikilarge.show_all_sari.sh as well.
