.PHONY: help install dev clean test lint format notebook run check all
.DEFAULT_GOAL := help

help:
	@echo "Expected Value Framework - Make Commands"
	@echo "======================================"
	@echo "Setup Commands:"
	@echo "  install     Install project dependencies using uv"
	@echo "  dev         Install development dependencies"
	@echo "  setup       Complete project setup (install + dev)"
	@echo ""
	@echo "Development Commands:"
	@echo "  notebook    Start Jupyter notebook server"
	@echo "  run         Execute the main notebook"
	@echo "  demo        Quick framework demonstration"
	@echo ""
	@echo "Environment Commands:"
	@echo "  env-info    Show environment information"
	@echo "  clean       Clean up temporary files"

install:
	@echo "🔧 Installing dependencies with uv..."
	uv venv --python 3.10
	uv pip install numpy pandas scikit-learn seaborn matplotlib jupyter lightgbm
	@echo "✅ Dependencies installed successfully!"

dev:
	@echo "🔧 Installing development dependencies..."
	uv pip install pytest black isort flake8
	@echo "✅ Development dependencies installed!"

setup: install dev
	@echo "🎉 Project setup completed! You can now run 'make notebook' to start!"

notebook:
	@echo "📓 Starting Jupyter notebook server..."
	@echo "Activate your environment first: source .venv/bin/activate"
	source .venv/bin/activate && jupyter notebook --port=8888 --no-browser

run:
	@echo "🚀 Running the Expected Value Framework notebook..."
	source .venv/bin/activate && jupyter nbconvert --to notebook --execute expected_value_framework_poc.ipynb --output executed_expected_value_framework_poc.ipynb
	@echo "✅ Notebook executed successfully!"

demo:
	@echo "🎯 Running Expected Value Framework demo..."
	source .venv/bin/activate && python -c "import pandas as pd; import numpy as np; import matplotlib.pyplot as plt; print('✅ Demo completed! Environment is working.')"

env-info:
	@echo "🔍 Environment Information:"
	@echo "=========================="
	@uv pip list

clean:
	@echo "🧹 Cleaning up temporary files..."
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type f -name ".DS_Store" -delete
	@echo "✅ Cleanup completed!"