# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define diretório de trabalho
WORKDIR /data

# Define variáveis padrão (podem ser sobrescritas no Render)
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=1million&IA \
    N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false \
    N8N_ENCRYPTION_KEY=8ea974e42e07a1368479973b0133ddba \
    N8N_PORT=5678 \
    NODE_FUNCTION_ALLOW_EXTERNAL=*

# Expõe a porta padrão
EXPOSE 5678

# Comando de inicialização (sem tini)
CMD ["/usr/local/bin/n8n", "start"]
