#!/bin/bash
# Simple DevSecOps Demo Application
# This script simulates a basic app for CI/CD testing

echo "======================================"
echo "  DevSecOps Git + Jenkins Demo App"
echo "======================================"
echo ""
echo "App Version : 1.0.0"
echo "Build Date  : $(date)"
echo "Hostname    : $(hostname)"
echo "OS          : $(lsb_release -ds 2>/dev/null || echo 'Unknown')"
echo ""
echo "✅ Application ran successfully!"
