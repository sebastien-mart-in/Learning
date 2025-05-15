# Outils Avancés pour le Machine Learning

*A list made by ChatGPT on May 5th, 2025 that list usefull tools to learn as a ML engineer*

## Optimisation & Compilation

- **JAX**: Compilation et différentiation automatique ultra-rapide, idéal pour du calcul ML à grande échelle.
- **XLA**: Backend de compilation pour JAX/TF pour exécuter efficacement sur CPU, GPU, TPU.
- **TorchScript**: Permet de compiler des modèles PyTorch pour les rendre plus rapides et portables.
- **ONNX**: Format standard pour exporter des modèles entre frameworks.
- **TensorRT**: Outil de NVIDIA pour l’optimisation et l’accélération de modèles sur GPU.
- **TVM**: Compilateur ML modulaire pour optimiser et déployer des modèles sur divers hardwares.
- **DeepSpeed**: Framework de Microsoft pour le training distribué et l'optimisation mémoire.
- **HuggingFace Accelerate**: Simplifie le multi-GPU/multi-TPU training.
- **FlashAttention**: Implémentation ultra-rapide de l’attention pour accélérer les transformers.
- **Gekko**: Résolution de problèmes d'optimisation non linéaire en temps réel.
- **OMLT**: Intégration de modèles ML dans des problèmes d'optimisation mathématique.
- **BoTorch**: Optimisation bayésienne efficace basée sur PyTorch.

## Gestion & Entraînement de Modèles

- **Lightning**: Framework haut-niveau pour organiser le code ML proprement.
- **Fastai**: Wrapper autour de PyTorch pour du ML rapide et accessible.
- **Skorch**: Intègre des réseaux neuronaux dans un pipeline sklearn.
- **Transformers**: API standardisée pour NLP et vision state-of-the-art.
- **Diffusers**: Librairie pour les modèles de diffusion.

## Entraînement Distribué & HPC

- **TorchElastic**: Gestion dynamique du scaling de job PyTorch distribué.
- **Ray**: Framework distribué pour scalabilité de modèles ML.
- **MPI4py**: Bindings Python pour le parallel computing.
- **Horovod**: Training distribué par Uber.
- **Fiber**: Calcul distribué moderne sur clusters informatiques.

## Utilitaires & Wrappers

- **Hydra**: Gestion dynamique de configuration YAML/CLI.
- **Sacred**: Framework pour expériences reproductibles.
- **Weights & Biases**: Suivi, visualisation, versioning d’expériences ML.
- **MLflow**: Tracking des expériences et versionnage de modèles.
- **Optuna**: Tuning hyperparamètres via recherche bayésienne.
- **Ax**: Framework de tuning expérimental de Meta.
- **Comet.ml**: Alternative à wandb.
- **Uvicorn + FastAPI**: APIs ultra-rapides pour servir des modèles.
- **Docker**: Conteneurisation pour déploiement.
- **Poetry**: Gestion moderne des dépendances Python.
- **UV**: Alternative rapide à pip pour venv.
- **DVC**: Versioning des données et modèles.
- **Pydantic**: Validation de données typée.
- **Pytorch Hub**: Chargement rapide de modèles préentraînés.
- **Sherpa**: Optimisation robuste des hyperparamètres.

## Visualisation & Analyse

- **TensorBoard**: Visualisation de scalars, graphes, etc.
- **Plotly/Dash**: Visualisation interactive avancée.
- **Seaborn / Matplotlib**: Visualisation statistique classique.
- **Gradio / Streamlit**: Démos web interactives pour modèles ML.

## Agents, RL & LLM Ops

- **LangChain**: Framework pour orchestrer des agents IA.
- **Transformers Agents**: Orchestration d'agents IA via HF.
- **RLlib**: Librairie de RL distribuée.
- **PettingZoo**: Environnements multi-agents pour RL.
- **OpenAI Gym / Gymnasium**: Framework standardisé pour RL.

## Serving, DevOps & ML Ops

- **TorchServe**: Serving de modèles PyTorch.
- **Triton Inference Server**: Serving performant de modèles sur GPU.
- **BentoML**: Déploiement d’APIs ML en production.
- **Seldon Core**: Serving de modèles dans Kubernetes.
- **KServe**: Serving ML standard sur Kubernetes.
- **Airflow / Prefect**: Orchestration de pipelines ML.

## Autres Outils Spécialisés

- **Faiss**: Recherche de similarité vectorielle rapide.
- **ScaNN**: Vector search scalable de Google.
- **Annoy**: Recherche approximate nearest neighbors.
- **SentenceTransformers**: Embeddings puissants de textes.
- **Peft**: Finetuning léger pour gros modèles (LoRA, etc.).

## Profiling Tools

### Python-level Profilers
- **cProfile**: Built-in Python profiler, gives function call statistics.
- **line_profiler**: Line-by-line timing of Python functions (`@profile` decorator).
- **memory_profiler**: Tracks memory usage of Python code line-by-line.

### PyTorch-Specific Profiling
- **PyTorch Profiler**: Monitors GPU/CPU usage, kernel time, tensor shapes, integrated with TensorBoard.
- **torch.utils.bottleneck**: Quick way to diagnose slowdowns (wraps `cProfile`, `autograd.profiler`).
- **autograd.profiler**: Fine-grained GPU + CPU timeline profiling (legacy).

### Low-level GPU Profiling
- **Nsight Systems / Nsight Compute**: NVIDIA’s visual profilers for CUDA workloads.
- **nvprof**: Legacy NVIDIA profiler (deprecated).
- **nvidia-smi**: Terminal tool to monitor GPU usage (basic monitoring).

### Visualization Tools
- **TensorBoard**: PyTorch Profiler integration for timeline view, operator time, memory etc.
- **Chrome Tracing**: Many profilers export timeline data in Chrome format.

### Distributed & Cloud Profiling
- **Ray Dashboard**: Profiles distributed workloads across nodes.
- **DeepSpeed Flops Profiler**: Estimates FLOPs and parameter usage during training.
- **Amazon SageMaker Debugger**: Monitors training in AWS cloud with hooks.
- **WandB/Weights & Biases**: Supports basic performance profiling and monitoring.
