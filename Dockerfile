FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# 只复制 JAR 包
COPY target/*.jar app.jar
# 设置环境变量
ENV JAVA_OPTS="-Xms512m -Xmx1024m"
ENV SPRING_CONFIG_LOCATION=/app/config/
# 暴露端口
EXPOSE 8081
# 启动应用，指定外部配置文件
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]