#!/bin/bash
# instalador de asciimerides — efemérides ASCII al abrir terminal
set -e

BIN="/usr/local/bin/asciimerides"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🐄 Instalando asciimerides..."

# Copiar binario
sudo cp "$SCRIPT_DIR/asciimerides.py" "$BIN"
sudo chmod +x "$BIN"
echo "   ✅ $BIN"

# Agregar a .bashrc si no está
if ! grep -q "asciimerides" ~/.bashrc 2>/dev/null; then
    echo -e '\n# Ephimeris ASCII al abrir terminal\nasciimerides' >> ~/.bashrc
    echo "   ✅ Agregado a ~/.bashrc"
else
    echo "   ⏭️  Ya estaba en ~/.bashrc"
fi

echo ""
echo "⭐ ¡Listo! Abrí una terminal nueva para probarlo."
echo ""
echo "Para instalar en otros servidores:"
echo "   scp asciimerides.py otro-server:/tmp/"
echo "   ssh otro-server 'sudo mv /tmp/asciimerides.py /usr/local/bin/asciimerides && sudo chmod +x /usr/local/bin/asciimerides && echo asciimerides >> ~/.bashrc'"
