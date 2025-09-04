# Use uma imagem oficial do Python como base.
# A versão 3.10-slim é leve e ideal para contêineres.
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

# Comando padrão para iniciar o Jupyter Notebook.
# --ip=0.0.0.0 permite acesso de qualquer IP (necessário no Docker).
# --no-browser evita que o contêiner tente abrir um navegador internamente.
# --allow-root é para o caso de o contêiner rodar como root.
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]