# 🐄 asciimerides

![asciimerides](asciimerides-logo.jpg)

**Efemérides del día con arte ASCII al abrir la terminal.**

Cada vez que abras una terminal, te recibe con un dibujo ASCII temático según el día: Star Wars, Revolución de Mayo, Día de la Bandera, Navidad, Día del Programador... y si no hay nada especial, una vaquita estilo cowsay te saluda.

![python](https://img.shields.io/badge/python-3.8+-blue) ![license](https://img.shields.io/badge/license-MIT-green)

## 📅 Efemérides incluidas

### 🌍 Internacionales
- Año Nuevo (1/1)
- San Valentín (14/2)
- Día de la Mujer (8/3)
- Día de Pi π (14/3)
- April Fools (1/4)
- Star Wars Day (4/5) ⚔️
- Día del Trabajador (1/5)
- Halloween (31/10)
- Día de Todos los Santos (1/11)
- Navidad (25/12)

### 🇦🇷 Argentina
- Día de la Memoria (24/3)
- Malvinas (2/4)
- Revolución de Mayo (25/5)
- Día de la Bandera (20/6)
- Independencia (9/7)
- San Martín (17/8)
- Soberanía Nacional (20/11)
- Restauración de la Democracia (10/12)

### 💻 Tecnología
- Día del Programador (12 o 13/9)

### 🌦️ Estaciones (Hemisferio Sur)
- Otoño, Invierno, Primavera, Verano

### 📚 Cultura
- Día del Libro (23/4)
- Día de la Tierra (22/4)
- Talk Like a Pirate Day (19/9)

## 🚀 Instalación

### Opción 1: Curl (recomendado)

```bash
curl -sSL https://raw.githubusercontent.com/gervasiomz/asciimerides/main/asciimerides.py | sudo tee /usr/local/bin/asciimerides > /dev/null
sudo chmod +x /usr/local/bin/asciimerides
echo 'asciimerides' >> ~/.bashrc
```

### Opción 2: Git clone

```bash
git clone https://github.com/gervasiomz/asciimerides.git
cd asciimerides
bash install-asciimerides.sh
```

### Opción 3: Manual

```bash
sudo cp asciimerides.py /usr/local/bin/asciimerides
sudo chmod +x /usr/local/bin/asciimerides
echo 'asciimerides' >> ~/.bashrc
```

## 🖥️ Deploy masivo a múltiples servidores

```bash
# A un server
scp asciimerides.py user@server:/tmp/
ssh user@server 'sudo mv /tmp/asciimerides.py /usr/local/bin/asciimerides && sudo chmod +x /usr/local/bin/asciimerides && echo asciimerides >> ~/.bashrc'

# A todos tus servers
for host in server1 server2 server3; do
  scp asciimerides.py $host:/tmp/
  ssh $host 'sudo mv /tmp/asciimerides.py /usr/local/bin/asciimerides && sudo chmod +x /usr/local/bin/asciimerides && echo asciimerides >> ~/.bashrc'
done
```

## ➕ Agregar tus propias efemérides

Editá `asciimerides.py` y agregá tu entrada en el diccionario `EPHEMERIS`:

```python
("MM", "DD"): ("🏷️  Tu Título", r"""
    Tu arte ASCII acá
"""),
```

## 📝 Licencia

MIT — hacé lo que quieras. Si lo usás y te gusta, una ⭐ en GitHub alcanza.

---

> 🖥️ Para los que amamos la terminal, los datos curiosos y un toque de arte ASCII al empezar el día.
