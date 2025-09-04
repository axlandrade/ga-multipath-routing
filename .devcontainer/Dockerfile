# Use uma imagem oficial do Python como base.
# A versão 3.12-slim é leve e ideal para contêineres.
FROM python:3.12-slim

# Define o diretório de trabalho dentro do contêiner.
# Tudo que for copiado para o contêiner irá para esta pasta.
WORKDIR /workspace

# Copia o arquivo de requisitos e instala as bibliotecas.
# Usamos --no-cache-dir para reduzir o tamanho da imagem final.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que o Jupyter Notebook usa.
EXPOSE 8888

# --- MUDANÇA PRINCIPAL ---
# Comando para manter o contêiner rodando em segundo plano.
# Isso permite que o VS Code se conecte e gerencie o ambiente,
# incluindo a inicialização do Jupyter pela própria extensão ou manualmente.
CMD ["sleep", "infinity"]