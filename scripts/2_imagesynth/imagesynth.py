# Custom Imports
from veritas.synth import OctVolSynthDataset

if __name__ == "__main__":
    synth = OctVolSynthDataset(exp_path="output/synthetic_data/exp0001", label_type='label')
    for i in range(10):
        synth.__getitem__(i, save_nifti=True, make_fig=True, save_fig=True)