# Use uma imagem oficial do Python como base.
FROM python:3.12-slim

# Define o diretório de trabalho dentro do contêiner.
WORKDIR /workspace

# --- MUDANÇA AQUI ---
# Instala o Git
RUN apt-get update && apt-get install -y git

# Copia o arquivo de requisitos e instala as bibliotecas.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que o Jupyter Notebook usa.
EXPOSE 8888

# Comando para manter o contêiner rodando em segundo plano.
CMD ["sleep", "infinity"]