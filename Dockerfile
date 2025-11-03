# Usa a imagem oficial do n8n
FROM n8nio/n8n

# Define o diretório de trabalho
WORKDIR /data

# Expõe a porta padrão do n8n
EXPOSE 5678

# Comando de inicialização
CMD ["n8n", "start"]
