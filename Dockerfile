# Usando uma imagem base com Java 17
FROM openjdk:17

# Definindo o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiando o diretório de saída da produção do JPPF-Server para o contêiner
COPY ./out/production/JPPF-Server/ /app

# Copiando as bibliotecas para o diretório /libs dentro do contêiner
COPY libs ./libs

# Expondo a porta 11111 para permitir conexões externas
EXPOSE 11111

# Definindo o ponto de entrada para o contêiner, especificando o classpath
# Incluímos todos os arquivos JAR na pasta libs e o diretório /app
ENTRYPOINT ["java", "-cp", "/app:/app/libs/*", "Main"]
