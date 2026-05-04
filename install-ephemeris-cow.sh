#!/bin/bash
# instalador de ephemeris-cow — efemérides ASCII al abrir terminal
set -e

BIN="/usr/local/bin/ephemeris-cow"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🐄 Instalando ephemeris-cow..."

# Copiar binario
sudo cp "$SCRIPT_DIR/ephemeris-cow.py" "$BIN"
sudo chmod +x "$BIN"
echo "   ✅ $BIN"

# Agregar a .bashrc si no está
if ! grep -q "ephemeris-cow" ~/.bashrc 2>/dev/null; then
    echo -e '\n# Ephimeris ASCII al abrir terminal\nephemeris-cow' >> ~/.bashrc
    echo "   ✅ Agregado a ~/.bashrc"
else
    echo "   ⏭️  Ya estaba en ~/.bashrc"
fi

echo ""
echo "⭐ ¡Listo! Abrí una terminal nueva para probarlo."
echo ""
echo "Para instalar en otros servidores:"
echo "   scp ephemeris-cow.py otro-server:/tmp/"
echo "   ssh otro-server 'sudo mv /tmp/ephemeris-cow.py /usr/local/bin/ephemeris-cow && sudo chmod +x /usr/local/bin/ephemeris-cow && echo ephemeris-cow >> ~/.bashrc'"
