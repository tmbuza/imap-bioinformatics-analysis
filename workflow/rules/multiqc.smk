rule multiqc:
    input:
        script="workflow/scripts/multiqc.py"
    output:
        "results/qc/multiqc_report.html",
    log:
        "logs/multiqc.log",
    log:
        "logs/multiqc.log"
    shell:
        "python {input.scripts"
    wrapper:
        "0.75.0/bio/multiqc"


# rule multiqc_star:
#     input:
#         expand(
#             "results/star/{unit.sample_name}-{unit.unit_name}/Aligned.sortedByCoord.out.bam",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.junctionanno.junction.bed",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.junctionsat.junctionSaturation_plot.pdf",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.infer_experiment.txt",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.stats.txt",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.inner_distance_freq.inner_distance.txt",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.readdistribution.txt",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.readdup.DupRate_plot.pdf",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "results/qc/rseqc/{unit.sample_name}-{unit.unit_name}.readgc.GC_plot.pdf",
#             unit=units.itertuples(),
#         ),
#         expand(
#             "logs/rseqc/rseqc_junction_annotation/{unit.sample_name}-{unit.unit_name}.log",
#             unit=units.itertuples(),
#         ),
#     output:
#         "results/qc/multiqc_report.html",
#     log:
#         "logs/multiqc.log",
#     wrapper:
#         "0.75.0/bio/multiqc"