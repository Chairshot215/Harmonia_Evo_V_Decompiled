.class public Ljunit/runner/TestCaseClassLoader;
.super Ljava/lang/ClassLoader;
.source "TestCaseClassLoader.java"


# static fields
.field static final EXCLUDED_FILE:Ljava/lang/String; = "excluded.properties"


# instance fields
.field private defaultExclusions:[Ljava/lang/String;

.field private fExcluded:Ljava/util/Vector;

.field private fPathItems:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "junit.framework."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "junit.extensions."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "junit.runner."

    aput-object v2, v0, v1

    iput-object v0, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->scanPath(Ljava/lang/String;)V

    invoke-direct {p0}, Ljunit/runner/TestCaseClassLoader;->readExcludedPackages()V

    return-void
.end method

.method private getClassData(Ljava/io/File;)[B
    .locals 5

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x3e8

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v4, 0x3e8

    new-array v0, v4, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private loadFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ljunit/runner/TestCaseClassLoader;->getClassData(Ljava/io/File;)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadJarData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    move-object v1, v10

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v8, v9

    move-object v1, v10

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    long-to-int v6, v11

    :try_start_1
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-array v1, v6, [B

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    array-length v11, v1

    sub-int/2addr v11, v5

    invoke-virtual {v7, v1, v5, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    move-object v8, v9

    goto :goto_0

    :catch_1
    move-exception v11

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v8, v9

    move-object v1, v10

    goto :goto_0

    :catchall_0
    move-exception v10

    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_4
    throw v10

    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v11

    goto :goto_3

    :catch_4
    move-exception v11

    goto :goto_4
.end method

.method private lookupClassData(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljunit/runner/TestCaseClassLoader;->isJar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadJarData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    invoke-direct {p0, v3, v1}, Ljunit/runner/TestCaseClassLoader;->loadFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readExcludedPackages()V
    .locals 8

    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    iget-object v7, p0, Ljunit/runner/TestCaseClassLoader;->defaultExclusions:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "excluded.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "excluded."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    throw v6

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method private scanPath(Ljava/lang/String;)V
    .locals 4

    const-string v2, "path.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljunit/runner/TestCaseClassLoader;->fPathItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljunit/runner/TestCaseClassLoader;->fExcluded:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isJar(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {p0, p1}, Ljunit/runner/TestCaseClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_1
    if-nez v0, :cond_3

    :try_start_3
    invoke-direct {p0, p1}, Ljunit/runner/TestCaseClassLoader;->lookupClassData(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    const/4 v3, 0x0

    :try_start_4
    array-length v4, v2

    invoke-virtual {p0, p1, v2, v3, v4}, Ljunit/runner/TestCaseClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, v0}, Ljunit/runner/TestCaseClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
