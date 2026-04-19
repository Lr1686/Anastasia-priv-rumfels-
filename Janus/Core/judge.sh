#!/bin/bash
MUTATION_PATH="Janus/Mutations/next_evolution.sh"
if [ -f "$MUTATION_PATH" ]; then
    echo "⚖️ Examen d'une nouvelle mutation..."
    bash -n "$MUTATION_PATH"
    if [ $? -eq 0 ]; then
        echo "✅ Mutation syntaxiquement valide."
    else
        echo "❌ Mutation corrompue. Rejet."
        rm "$MUTATION_PATH"
    fi
fi
