# UCT31021 - Practical for Artificial Intelligence

This repository contains lab work, assignments, and exam materials for the UCT31021 Artificial Intelligence course.

## 📚 Course Overview

This course covers fundamental concepts and practical implementations in Artificial Intelligence, including:
- Logic Programming with Prolog
- Search Algorithms (DFS, BFS, Graph Search)
- Machine Learning with Python
- Knowledge Representation
- Problem Solving (Queens Problem, Missionaries and Cannibals)

## 🗂️ Repository Structure

### Prolog Labs (`Prolog/`)
Contains Prolog programming exercises covering:
- Logic programming fundamentals (lab01-lab07)
- Knowledge bases and rule systems
- Problem-solving implementations

### Python Labs
Organized by labsheet folders containing Jupyter notebooks:
- **Labsheet 8**: Banking data analysis
- **Labsheet 9**: K-Nearest Neighbors (KNN) with Iris dataset
- **Labsheet 10**: Data processing with student data
- **Labsheet 11**: Advanced ML techniques
- **Labsheet 12**: Final lab exercises

### Continuous Assessments
- **CA 01/**: First continuous assessment
- **CA 02/**: Second continuous assessment  
- **CA 03/**: Third continuous assessment

### Exam Materials (`Exam/`)
Contains practice problems and solutions including:
- **CA01.pl - CA04.pl**: Assessment files
- **DFS&BFS.pl**: Depth-First and Breadth-First Search implementations
- **employee_knowledge_base.pl**: Knowledge base examples
- **family_and_employee.pl**: Relational database examples
- **Graph.pl**: Graph traversal algorithms
- **Search,Traversal.ipynb**: Python implementation of search algorithms

#### Key Exam Files:
- `family_employee_countries.pl` - Combined knowledge bases
- `full_knowledge_base.pl` - Comprehensive knowledge base
- Various LB (Labsheet) practice files

### 2019 Archive
Historical materials including:
- Family tree Prolog implementations
- Four Queens problem
- Missionaries and Cannibals problem
- Transaction logic

## 🛠️ Technologies Used

- **Prolog**: SWI-Prolog for logic programming
- **Python 3.x**: For machine learning and data analysis
- **Jupyter Notebook**: Interactive Python development
- **Libraries**:
  - pandas - Data manipulation
  - numpy - Numerical computing
  - scikit-learn - Machine learning
  - matplotlib/seaborn - Data visualization
  - joblib - Model persistence

## 🚀 Getting Started

### Prerequisites

**For Prolog:**
```bash
# Install SWI-Prolog
# Download from: https://www.swi-prolog.org/download/stable
```

**For Python:**
```bash
# Recommended: Python 3.8 or higher
pip install jupyter pandas numpy scikit-learn matplotlib seaborn joblib
```

### Running Prolog Files

```bash
# Start SWI-Prolog
swipl

# Load a file
?- [filename].

# Example
?- [family_tree_prolog].
```

### Running Jupyter Notebooks

```bash
# Navigate to the project directory
cd "d:\Python Project\UCT31021-Practical for Artificial Intelligence"

# Start Jupyter Notebook
jupyter notebook

# Open any .ipynb file from the browser
```

## 📝 Key Topics Covered

### Logic Programming (Prolog)
- Facts and Rules
- Queries and Inference
- Recursion
- Lists and List Processing
- Backtracking
- Knowledge Bases

### Search Algorithms
- Depth-First Search (DFS)
- Breadth-First Search (BFS)
- Graph Traversal
- Problem-Solving Strategies

### Machine Learning (Python)
- Data Preprocessing
- K-Nearest Neighbors (KNN)
- Model Training and Evaluation
- Data Visualization
- Feature Engineering

### Classical AI Problems
- Four Queens Problem
- Missionaries and Cannibals
- Family Tree Relationships
- Graph Search Problems

## 📊 Datasets

- `banking.csv` - Banking transaction data
- `Math-Students.csv` - Student performance data
- `iris_knn_model.joblib` - Pre-trained KNN model
- `covid_datas.csv` - COVID-19 dataset

## 🎓 Lab Structure

Each lab folder typically contains:
- Jupyter notebooks (`.ipynb`) for Python exercises
- Prolog files (`.pl`) for logic programming
- Supporting data files (`.csv`)
- Backup files (`.pl~`)

## 📖 Usage Examples

### Prolog Example - Family Tree
```prolog
% Define relationships
parent(john, mary).
parent(john, tom).

% Define rules
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Query
?- grandparent(john, Who).
```

### Python Example - KNN
```python
from sklearn.neighbors import KNeighborsClassifier
import joblib

# Load pre-trained model
model = joblib.load('iris_knn_model.joblib')

# Make predictions
prediction = model.predict([[5.1, 3.5, 1.4, 0.2]])
```

## 🤝 Contributing

This is a personal academic repository. The materials are for learning purposes and reference.

## 📄 License

This project is part of academic coursework. Please respect academic integrity policies when using these materials.

## 📧 Contact

For questions about the course content, please contact your course instructor.

---

**Note**: This repository contains coursework from UCT31021 - Practical for Artificial Intelligence course. All solutions and implementations are for educational purposes.
