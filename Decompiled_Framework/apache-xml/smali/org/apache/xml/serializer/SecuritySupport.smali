.class Lorg/apache/xml/serializer/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "java.security.AccessController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport12;

    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport12;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    :goto_0
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    :goto_1
    return-void

    :catch_0
    move-exception v3

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    :cond_0
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/xml/serializer/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    :cond_1
    sput-object v1, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    throw v3

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lorg/apache/xml/serializer/SecuritySupport;
    .locals 1

    sget-object v0, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xml/serializer/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
