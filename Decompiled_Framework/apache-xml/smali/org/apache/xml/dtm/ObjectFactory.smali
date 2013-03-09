.class Lorg/apache/xml/dtm/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static fLastModified:J

.field private static fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider for factory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/dtm/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v3}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, v4

    :goto_0
    if-ne v1, v0, :cond_2

    const-class v5, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v4

    :goto_1
    if-ne v2, v0, :cond_0

    :goto_2
    return-object v4

    :cond_0
    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/services/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v10, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    move-object v0, v1

    invoke-virtual {v7, v0, v6}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    move-object v3, v9

    :goto_0
    return-object v3

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found jar resource="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " using ClassLoader: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    if-eqz v3, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found in resource, value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    move-object v3, v9

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    throw v9

    :cond_2
    move-object v3, v9

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_3

    :catch_4
    move-exception v10

    goto :goto_4
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_0
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move-object v3, p0

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_1
    move-exception v6

    if-eqz p2, :cond_5

    const-class v7, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eq p1, v0, :cond_4

    move-object p1, v0

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_4
    throw v6

    :cond_5
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v1, :cond_0

    move-object v1, p2

    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v0, v4}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created new instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using ClassLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    :catch_0
    move-exception v3

    new-instance v4, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object v10

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found system property, value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v11

    :catch_0
    move-exception v13

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_8

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_1
    const-string v13, "java.home"

    invoke-virtual {v10, v13}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "lib"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "xalan.properties"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v10, v7}, Lorg/apache/xml/dtm/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v8

    move-object v6, v7

    :goto_1
    const-class v14, Lorg/apache/xml/dtm/ObjectFactory;

    monitor-enter v14

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_3
    sget-wide v15, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-ltz v13, :cond_6

    if-eqz v8, :cond_5

    sget-wide v15, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    invoke-virtual {v10, v6}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v17

    sput-wide v17, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    cmp-long v13, v15, v17

    if-gez v13, :cond_5

    const/4 v5, 0x1

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    sput-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v10, v6}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    sget-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v13, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_3
    :goto_3
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    if-eqz v13, :cond_4

    sget-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_4
    if-eqz v2, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    move-object v11, v2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_5
    const-wide/16 v13, -0x1

    sput-wide v13, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    goto :goto_1

    :cond_5
    if-nez v8, :cond_1

    const-wide/16 v15, -0x1

    :try_start_6
    sput-wide v15, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    const/4 v13, 0x0

    sput-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v12

    const/4 v13, 0x0

    :try_start_7
    sput-object v13, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    const-wide/16 v15, -0x1

    sput-wide v15, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v13

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_1

    const/4 v5, 0x1

    :try_start_9
    invoke-virtual {v10, v6}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v15

    sput-wide v15, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v13

    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_7
    :goto_6
    :try_start_b
    throw v13

    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v13

    :cond_8
    const/4 v3, 0x0

    :try_start_c
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-result-object v2

    if-eqz v3, :cond_4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    :catch_4
    move-exception v13

    goto :goto_4

    :catch_5
    move-exception v13

    if-eqz v3, :cond_4

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v13

    goto/16 :goto_4

    :catchall_2
    move-exception v13

    if-eqz v3, :cond_9

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_9
    :goto_7
    throw v13

    :cond_a
    invoke-static/range {p0 .. p0}, Lorg/apache/xml/dtm/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :catch_7
    move-exception v13

    goto/16 :goto_3

    :catch_8
    move-exception v15

    goto :goto_6

    :catch_9
    move-exception v14

    goto :goto_7

    :catch_a
    move-exception v1

    move-object v6, v7

    goto :goto_5
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created new instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
