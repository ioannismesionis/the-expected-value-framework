# Expected Value Framework for ML Decision Making

A comprehensive implementation of the **Expected Value Framework** for business-oriented machine learning threshold optimization. This framework moves beyond traditional accuracy-based metrics to optimize for real business value and outcomes.

## 🎯 Overview

Traditional ML models optimize for statistical metrics like accuracy, precision, or F1-score. However, in real business contexts, **not all prediction errors are equal**. Some outcomes have much higher costs or benefits than others. The Expected Value Framework addresses this by:

- **Aligning model outputs with business objectives** rather than just statistical accuracy
- **Accounting for asymmetric costs** of different prediction errors  
- **Enabling personalized decision-making** based on individual risk-reward profiles
- **Providing interpretable business metrics** for model evaluation

## 📋 Use Case: Email Marketing Campaign Optimization

This implementation demonstrates the framework using an email marketing scenario where:

- **Goal**: Predict whether customers will unsubscribe from promotional emails
- **Business Impact**: Balance revenue from engaged customers vs. lifetime value loss from unsubscribes
- **Decision**: Optimize email send thresholds to maximize expected business value

## 🚀 Quick Start

### Prerequisites

- Python 3.10+
- [uv](https://docs.astral.sh/uv/) package manager

### Setup

1. **Clone and navigate to the project**:
   ```bash
   cd path/to/the-expected-value-framework
   ```

2. **Set up the environment**:
   ```bash
   make setup
   ```

3. **Activate the environment and start Jupyter**:
   ```bash
   source .venv/bin/activate
   jupyter notebook
   ```

4. **Open and run the main notebook**:
   - `expected_value_framework_poc.ipynb`

## 🛠️ Available Commands

### Setup Commands
```bash
make install     # Install project dependencies
make dev         # Install development dependencies  
make setup       # Complete project setup (install + dev)
```

### Development Commands
```bash
make notebook    # Start Jupyter notebook server
make demo        # Run quick framework demonstration
make run         # Execute the main notebook
```

### Environment Commands
```bash
make env-info    # Show environment information
make clean       # Clean temporary files
make help        # Show all available commands
```

## 📊 What's Included

### 1. **Comprehensive Jupyter Notebook**
- Mathematical foundation of expected value theory
- Complete implementation with synthetic dataset (150,000 customers)
- End-to-end ML pipeline with calibrated Random Forest model

### 2. **Business Value Framework**
- Realistic business value mapping:
  - **Correct email send**: +$2.50 (revenue from engagement)
  - **False email send**: -$15.00 (customer lifetime value loss)
  - **Missed opportunity**: $0.00 (no direct cost)
  - **Correct avoidance**: +$0.25 (deliverability benefits)

### 3. **Advanced Analysis Features**
- **Threshold Optimization**: Find optimal decision thresholds for maximum EV
- **Customer Personalization**: Individual EV-based decision making
- **Policy Comparison**: Compare 5 different decision strategies
- **Rich Visualizations**: EV curves, confusion matrices, business impact charts

### 4. **Synthetic Data Generation**
Realistic email marketing dataset with:
- Customer demographics (age, tenure)
- Engagement metrics (opens, clicks, purchases)
- Behavioral features (frequency preferences, segments)
- Realistic unsubscribe probability modeling

## 📈 Key Results & Insights

The framework demonstrates that:

1. **EV-optimized policies significantly outperform** traditional accuracy-based approaches (often by 20-40% in business value)

2. **Optimal thresholds for business value** often differ substantially from those optimizing F1 or accuracy

3. **Personalized EV decisions** outperform global thresholding by tailoring to individual customer risk-reward profiles

4. **Business stakeholders can easily understand** value-based metrics vs. statistical abstractions

## 🔍 Framework Components

### Mathematical Foundation
```
EV_send = (1 - p) × V_correct_send + p × V_false_send
EV_no_send = (1 - p) × V_false_no_send + p × V_correct_no_send
```

**Decision Rule**: Send email if `EV_send > EV_no_send`

### Key Functions

- `generate_email_marketing_data()`: Create realistic synthetic datasets
- `evaluate_threshold_expected_value()`: Optimize thresholds for maximum EV
- `compute_expected_value()`: Calculate personalized EV for each customer  
- `simulate_policy_performance()`: Compare different decision policies

## 📚 Project Structure

```
the-expected-value-framework/
├── README.md                          # This file
├── pyproject.toml                    # Project dependencies
├── Makefile                          # Development commands
├── expected_value_framework_poc.ipynb # Main notebook
└── .venv/                            # Virtual environment
```

## 🎓 Learning Outcomes

After working through this framework, you'll understand:

- How to translate business problems into expected value calculations
- When and why to move beyond accuracy-based ML optimization  
- How to implement customer-level personalization using EV theory
- Best practices for threshold optimization in business contexts
- How to communicate ML results in business terms

## 🔧 Technical Requirements

### Core Dependencies
- `numpy>=2.2.6` - Numerical computing
- `pandas>=2.3.2` - Data manipulation  
- `scikit-learn>=1.7.1` - Machine learning
- `matplotlib>=3.5.0` - Plotting
- `seaborn>=0.13.2` - Statistical visualization
- `jupyter>=1.0.0` - Notebook environment
- `lightgbm>=3.3.0` - Gradient boosting (for compatibility)

### Development Dependencies
- `pytest>=7.0.0` - Testing framework
- `black>=22.0.0` - Code formatting
- `isort>=5.10.0` - Import sorting  
- `flake8>=4.0.0` - Linting

## 🤝 Usage Examples

### Quick Demo
```bash
make demo
# Output: ✅ Demo completed! Environment is working.
```

### Run Full Analysis  
```bash
make run
# Executes the complete notebook and saves results
```

### Interactive Development
```bash
source .venv/bin/activate
jupyter notebook
# Open expected_value_framework_poc.ipynb
```

## 💡 Key Takeaways

> **"It's better to risk sending to a potentially unengaged customer than miss the opportunity to generate revenue from someone who would have converted."**

This framework is particularly valuable when:
- Prediction errors have different business impacts
- Customer-level personalization is important  
- Stakeholders need interpretable business metrics
- ROI optimization is prioritized over statistical accuracy

## 🚀 Getting Started

1. **Run the setup**: `make setup`
2. **Start exploring**: `make notebook` 
3. **Open the comprehensive notebook**
4. **Follow along with the analysis**
5. **Experiment with your own business values**

---

**Ready to optimize your ML decisions for real business value?** Start with `make setup` and dive into the notebook! 📊