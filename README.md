# UCT31021 - Practical for Artificial Intelligence

[![Course](https://img.shields.io/badge/Course-UCT31021-blue.svg)](https://github.com)
[![Language](https://img.shields.io/badge/Language-Prolog%20%7C%20Python-green.svg)](https://github.com)
[![AI](https://img.shields.io/badge/Topic-Artificial%20Intelligence-orange.svg)](https://github.com)

> A comprehensive collection of laboratory exercises, continuous assessments, and exam preparation materials for the UCT31021 Artificial Intelligence course, covering both symbolic AI (Prolog) and modern ML approaches (Python).

## 📚 Course Overview

This course provides hands-on experience with fundamental and advanced concepts in Artificial Intelligence, encompassing:

### Core Topics
- **Logic Programming with Prolog** - Rule-based reasoning and declarative programming
- **Search Algorithms** - DFS, BFS, informed search, and graph traversal techniques
- **Machine Learning with Python** - Supervised learning, classification, and data analysis
- **Knowledge Representation** - Facts, rules, and relational databases
- **Classical AI Problems** - N-Queens, Missionaries and Cannibals, constraint satisfaction

### Learning Outcomes
- Master logic programming and recursive problem-solving
- Implement search and traversal algorithms
- Apply machine learning techniques to real-world datasets
- Build and query knowledge bases
- Solve constraint satisfaction problems

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
- **CA 01/** (`UCT31021_CA01.pdf`): First continuous assessment - Logic programming fundamentals
- **CA 02/** (`UCT31021_CA02.pdf`): Second continuous assessment - Search algorithms and problem-solving
- **CA 03/** (`UCT31021_CA03.pdf`): Third continuous assessment - Machine learning and data analysis

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

### 🔷 Logic Programming (Prolog)
- **Facts and Rules**: Declarative knowledge representation
- **Queries and Inference**: Pattern matching and unification
- **Recursion**: Recursive definitions and problem decomposition
- **Lists and List Processing**: Manipulation, filtering, and transformation
- **Backtracking**: Automatic search through solution space
- **Knowledge Bases**: Employee records, family trees, relational data
- **Cut Operator**: Controlling backtracking behavior

### 🔷 Search Algorithms
- **Depth-First Search (DFS)**: Stack-based exhaustive search
- **Breadth-First Search (BFS)**: Queue-based level-order traversal
- **Tree Traversal**: Pre-order, in-order, post-order
- **Graph Search**: Cycle detection and path finding
- **Problem-Solving Strategies**: State space search and heuristics

### 🔷 Machine Learning (Python)
- **Data Preprocessing**: Cleaning, normalization, feature scaling
- **K-Nearest Neighbors (KNN)**: Instance-based classification
- **Model Training and Evaluation**: Train-test split, cross-validation
- **Data Visualization**: Matplotlib, Seaborn plots and charts
- **Feature Engineering**: Selection, extraction, transformation
- **Model Persistence**: Saving and loading with joblib

### 🔷 Classical AI Problems
- **N-Queens Problem**: Constraint satisfaction using backtracking
- **Missionaries and Cannibals**: State space search with constraints
- **Family Tree Relationships**: Transitive relations (grandparent, ancestor)
- **Graph Problems**: Connectivity, shortest paths, traversals

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
1 - Family Tree Relationships
```prolog
% Define facts
parent(john, mary).
parent(john, tom).
parent(mary, alice).

% Define rules for relationships
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Queries
?- grandparent(john, Who).    % Find grandchildren
?- ancestor(john, alice).      % Check ancestry
?- sibling(mary, tom).         % Check siblings
```

### Prolog Example 2 - Four Queens Problem
```prolog
% Generate safe board configuration
four_queens(Solution) :-
    perm([1,2,3,4], Solution),
    safe(Solution).
🎯 Project Highlights

### Key Implementations
- ✅ **Complete Knowledge Base System** - Employee records, family relations, country data
- ✅ **Search Algorithm Suite** - DFS, BFS with tree and graph support
- ✅ **N-Queens Solver** - Backtracking with constraint checking
- ✅ **Missionaries & Cannibals** - State space search with goal testing
- ✅ **KNN Classifier** - Trained on Iris dataset with model persistence
- ✅ **Data Analysis Pipeline** - CSV processing, visualization, feature engineering

### Skills Demonstrated
- 🧠 Logic-based reasoning and inference
- 🔍 Algorithm design and optimization
- 📊 Data science and statistical analysis
- 🤖 Machine learning model development
- 💻 Problem decomposition and recursion
- 🔧 Debugging and testing strategies

## 🛠️ Development Tools

### IDE & Environment
- **VS Code** - Primary development environment
- **Jupyter Notebook** - Interactive Python experimentation
- **SWI-Prolog** - Prolog interpreter and debugger

### Version Control
```bash
git init
git add .
git commit -m "Initial commit of AI practicals"
git push origin main
```

## 🐛 Troubleshooting

### Common Prolog Issues

**Issue**: `ERROR: source_sink '...' does not exist`
```bash
# Solution: Check file path and working directory
?- working_directory(CWD, CWD).
?- cd('path/to/files').
```

**Issue**: Infinite recursion
```prolog
% Problem: Missing base case
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).  % Will loop!

% Solution: Add base case first
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
```

### Common Python Issues

**Issue**: `ModuleNotFoundError: No module named 'sklearn'`
```bash
# Solution: Install required package
pip install scikit-learn
```

**Issue**: Jupyter kernel not starting
```bash
# Solution: Install ipykernel
pip install ipykernel
python -m ipykernel install --user
```

## 📚 Additional Resources

### Prolog Learning
- [SWI-Prolog Documentation](https://www.swi-prolog.org/pldoc/)
- [Learn Prolog Now!](http://www.learnprolognow.org/)
- [Prolog Problems](https://sites.google.com/site/prologsite/prolog-problems)

### Python & ML
- [Scikit-learn Documentation](https://scikit-learn.org/stable/)
- [Pandas User Guide](https://pandas.pydata.org/docs/user_guide/index.html)
- [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/)

### AI Concepts
- Russell & Norvig - "Artificial Intelligence: A Modern Approach"
- Clocksin & Mellish - "Programming in Prolog"

## 🤝 Contributing

This is a personal academic repository. The materials are for learning purposes and reference only.

### Usage Guidelines
- ✅ Use for learning and understanding concepts
- ✅ Reference for similar problem-solving approaches
- ❌ Do not copy directly for your own assignments
- ❌ Respect academic integrity policies

## 📄 License

This project is part of academic coursework for UCT31021. All materials are provided for educational purposes only. Please adhere to your institution's academic integrity policies when referencing these materials.

## 📧 Contact & Support

For questions about:
- **Course Content**: Contact your course instructor
- **Technical Issues**: Refer to the Troubleshooting section
- **Repository**: Check the documentation and examples

---

## 🌟 Acknowledgments

Special thanks to the course instructors and teaching assistants for their guidance throughout this AI journey.

---

**Last Updated**: January 2026  
**Course**: UCT31021 - Practical for Artificial Intelligence  
**Repository Purpose**: Educational reference and learning resource

> "Artificial Intelligence is the new electricity." - Andrew Ng
### Prolog Example 3 - DFS and BFS
```prolog
% Tree structure
tree([5, [3, [1, [], []], [4, [], []]],
        [7, [6, [], []], [9, [], []]]]).

% BFS traversal
bfs(Tree, Result) :-
    bfs_queue([[Tree]], [], Reversed),
    reverse(Reversed, Result).

% DFS traversal
dfs([Value, Left, Right], Result) :-
    dfs(Left, LeftResult),
    dfs(Right, RightResult),
    append([Value], LeftResult, Temp),
    append(Temp, RightResult, Result).
```

### Python Example 1 - KNN Classification
```python
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
import joblib

# Load pre-trained model
model = joblib.load('Labsheet 09/iris_knn_model.joblib')

# Make predictions
sample = [[5.1, 3.5, 1.4, 0.2]]  # Sepal length, width, petal length, width
prediction = model.predict(sample)
print(f"Predicted class: {prediction[0]}")

# Train new model
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_train, y_train)
accuracy = accuracy_score(y_test, knn.predict(X_test))
```

### Python Example 2 - Data Analysis
```python
import pandas as pd
import matplotlib.pyplot as plt

# Load and analyze student data
df = pd.read_csv('Labsheet 10/Math-Students.csv')

# Data exploration
print(df.describe())
print(df.groupby('gender')['G3'].mean())

# Visualization
df['G3'].hist(bins=20)
plt.xlabel('Final Grade')
plt.ylabel('Frequency')
plt.title('Distribution of Final Grades')
plt.show(

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
